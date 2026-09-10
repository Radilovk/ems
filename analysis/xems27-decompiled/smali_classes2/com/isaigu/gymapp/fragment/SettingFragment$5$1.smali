.class Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    .line 284
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 3
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 287
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    iput-wide v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
