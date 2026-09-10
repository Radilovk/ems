.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "EditUserProgramDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
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
        "Lcom/isaigu/gymapp/bean/TrainProgram;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    .line 562
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

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
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .line 565
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 567
    const-string v0, "file_name_train_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v2, 0x7f0d00c8

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v2, 0x7f0d00c7

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 576
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->this$3:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;->this$2:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 562
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
