.class Lcom/isaigu/gymapp/fragment/StartFragment$3;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "StartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/StartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/StartFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/StartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/StartFragment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

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
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;

    .line 60
    .local v0, "clientUpdateVO":Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/StartFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;->apkVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->needUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    new-instance v2, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;-><init>(Lcom/isaigu/gymapp/fragment/StartFragment$3;Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/StartFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    .end local v0    # "clientUpdateVO":Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/StartFragment$3;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
