.class Lcom/isaigu/gymapp/fragment/SettingFragment$20;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Lcom/isaigu/gymapp/bean/vo/UploadFileVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 599
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

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
            "Lcom/isaigu/gymapp/bean/vo/UploadFileVO;",
            ">;)V"
        }
    .end annotation

    .line 601
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/UploadFileVO;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->appLogoUrl:Ljava/lang/String;

    .line 604
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;->fileUrl:Ljava/lang/String;

    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$20;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateAppLogo(Ljava/lang/Long;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 620
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 599
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
