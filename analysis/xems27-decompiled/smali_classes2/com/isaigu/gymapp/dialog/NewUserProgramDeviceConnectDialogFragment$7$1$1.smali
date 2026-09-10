.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1$1;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;

    .line 480
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1$1;->this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1$1;->this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$200(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 483
    return-void
.end method
