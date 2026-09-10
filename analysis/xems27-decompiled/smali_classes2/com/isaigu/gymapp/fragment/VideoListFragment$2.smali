.class Lcom/isaigu/gymapp/fragment/VideoListFragment$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 164
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$308(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$500(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    .line 179
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$302(Lcom/isaigu/gymapp/fragment/VideoListFragment;I)I

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$100(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->clearData()V

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$500(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    .line 170
    return-void
.end method
