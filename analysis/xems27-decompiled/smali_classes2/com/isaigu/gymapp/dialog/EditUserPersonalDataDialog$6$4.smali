.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->onNoDoubleClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    .line 464
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

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
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d0\u4ea4\u7528\u6237\u6570\u636e\u54cd\u5e94\u3002\u3002\u3002\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 491
    :goto_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 464
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
