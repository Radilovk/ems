.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->onSaveProgram(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData<",
        "Lcom/isaigu/gymapp/bean/TrainProgram;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;

    .line 1586
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;

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
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    .line 1588
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 1605
    :goto_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1586
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
