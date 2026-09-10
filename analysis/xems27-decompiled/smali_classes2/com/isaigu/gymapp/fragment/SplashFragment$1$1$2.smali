.class Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    .line 106
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 2
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;ZLcom/isaigu/gymapp/bean/vo/ResponseData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
