.class Lcom/isaigu/gymapp/fragment/MainFragment$8;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData",
        "<",
        "Lcom/isaigu/gymapp/bean/TrainProgram;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/MainFragment$8;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

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
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const-string v0, "file_name_offline_update_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->removeData(Ljava/lang/String;Ljava/lang/Class;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment$8;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->access$400(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    .line 346
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 340
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/MainFragment$8;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
