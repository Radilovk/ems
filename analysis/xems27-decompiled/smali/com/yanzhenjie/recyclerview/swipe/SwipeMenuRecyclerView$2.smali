.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SwipeMenuRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 356
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyDataSetChanged()V

    .line 360
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 364
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 365
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRangeChanged(II)V

    .line 366
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 371
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 372
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 376
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 377
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRangeInserted(II)V

    .line 378
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 388
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 389
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p2, v0

    .line 390
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemMoved(II)V

    .line 391
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 382
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 383
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->notifyItemRangeRemoved(II)V

    .line 384
    return-void
.end method
