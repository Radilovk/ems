.class Lcom/isaigu/gymapp/fragment/VideoListFragment$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment;->getNextData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Lcom/isaigu/gymapp/bean/vo/PageResponseVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 128
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 3
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
            "Lcom/isaigu/gymapp/bean/vo/PageResponseVO;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/PageResponseVO;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$002(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/PageResponseVO;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    .line 132
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/vo/PageResponseVO;->content:Ljava/util/List;

    .line 133
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/VideoVO;>;"
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    new-instance v2, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$1$1;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    .end local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/VideoVO;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
