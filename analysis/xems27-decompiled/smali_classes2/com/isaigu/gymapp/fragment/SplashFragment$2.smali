.class Lcom/isaigu/gymapp/fragment/SplashFragment$2;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SplashFragment;

    .line 150
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

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
            "Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;

    .line 154
    .local v0, "splashScreenVO":Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    new-instance v2, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$2;Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/SplashFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    .end local v0    # "splashScreenVO":Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
