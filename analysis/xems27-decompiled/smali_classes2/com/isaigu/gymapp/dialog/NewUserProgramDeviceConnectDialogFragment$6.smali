.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 455
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 459
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "editProgram"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 462
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 463
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 464
    new-instance v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 473
    .end local v0    # "dialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
