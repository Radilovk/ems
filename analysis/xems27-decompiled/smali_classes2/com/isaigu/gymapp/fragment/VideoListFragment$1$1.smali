.class Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

.field final synthetic val$content:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->val$content:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->val$content:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$100(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->val$content:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->append(Ljava/util/List;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->refreshComplete()V

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$000(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$000(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/vo/PageResponseVO;->totalPages:I

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$300(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 143
    :cond_1
    return-void
.end method
