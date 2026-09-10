.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6$1;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;

    .line 411
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .locals 2
    .param p1, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p2, "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 414
    return-void
.end method
