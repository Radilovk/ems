.class Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "OperationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
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
.field final synthetic this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    .line 98
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

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

    .line 100
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 102
    const-class v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v2, "file_name_train_data"

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;->this$0:Lcom/isaigu/gymapp/train/utils/OperationUtil$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    const v1, 0x7f0d00c8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;->this$0:Lcom/isaigu/gymapp/train/utils/OperationUtil$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    const v1, 0x7f0d00c7

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;->this$0:Lcom/isaigu/gymapp/train/utils/OperationUtil$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->this$1:Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;->this$0:Lcom/isaigu/gymapp/train/utils/OperationUtil$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 109
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
