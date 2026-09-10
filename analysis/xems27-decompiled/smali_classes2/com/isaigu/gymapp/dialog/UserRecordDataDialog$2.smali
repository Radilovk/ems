.class Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "UserRecordDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->initData(Lcom/isaigu/gymapp/bean/TrainUser;)V
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
        "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    .line 129
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

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
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;>;)V"
        }
    .end annotation

    .line 131
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    .local v0, "trainRecordVOList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;"
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;-><init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    .end local v0    # "trainRecordVOList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
