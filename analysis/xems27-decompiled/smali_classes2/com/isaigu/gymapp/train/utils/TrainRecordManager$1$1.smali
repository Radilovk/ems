.class Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "TrainRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
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
.field final synthetic this$1:Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;

    .line 103
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1$1;->this$1:Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;

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

    .line 105
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 107
    const-class v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-string v2, "file_name_user_data"

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 109
    :cond_0
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 110
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
