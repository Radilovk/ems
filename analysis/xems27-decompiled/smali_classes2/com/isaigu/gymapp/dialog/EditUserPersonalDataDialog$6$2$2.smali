.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2$2;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Ljava/util/List<",
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;

    .line 421
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;

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
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .line 423
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 425
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 427
    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v2, "file_name_user_data"

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 428
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 430
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_0
    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 433
    :goto_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 421
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
