.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1$1;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->run()V
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
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;

    .line 322
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 0
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

    .line 324
    .local p3, "result":Lcom/isaigu/gymapp/bean/vo/ResponseData;, "Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    .line 327
    :cond_0
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
