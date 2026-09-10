.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->run()V
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
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    .line 1168
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 3
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 1170
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 1181
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1168
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
