.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .line 643
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

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
            "Lcom/isaigu/gymapp/bean/vo/UploadFileVO;",
            ">;)V"
        }
    .end annotation

    .line 645
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/UploadFileVO;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 650
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/UploadFileVO;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 659
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 643
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
