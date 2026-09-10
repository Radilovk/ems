.class Lcom/isaigu/gymapp/fragment/MainFragment$10;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainRecord()V
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
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 378
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/MainFragment$10;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 2
    .param p1, "httpSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 380
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-class v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    const-string v1, "file_name_offline_train_record_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->removeData(Ljava/lang/String;Ljava/lang/Class;)V

    .line 383
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/MainFragment$10;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
