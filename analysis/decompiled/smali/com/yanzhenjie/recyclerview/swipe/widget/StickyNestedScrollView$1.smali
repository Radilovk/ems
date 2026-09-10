.class Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;
.super Ljava/lang/Object;
.source "StickyNestedScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 65
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$100(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I

    move-result v1

    .line 67
    .local v1, "l":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$200(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I

    move-result v3

    .line 68
    .local v3, "t":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$300(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I

    move-result v2

    .line 69
    .local v2, "r":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v5}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-static {v6}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->access$400(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 70
    .local v0, "b":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidate(IIII)V

    .line 72
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_0
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;->this$0:Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
