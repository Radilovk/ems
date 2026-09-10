.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SwipeMenuRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field final synthetic val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic val$spanSizeLookupHolder:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 302
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->val$spanSizeLookupHolder:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .line 305
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->val$spanSizeLookupHolder:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 310
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$1;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method
