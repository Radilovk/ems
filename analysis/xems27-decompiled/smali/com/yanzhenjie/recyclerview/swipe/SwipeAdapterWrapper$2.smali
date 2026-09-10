.class Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;
.super Ljava/lang/Object;
.source "SwipeAdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 120
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;->this$0:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->access$100(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$2;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeItemLongClickListener;->onItemLongClick(Landroid/view/View;I)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
