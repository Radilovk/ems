.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$position:I

.field final synthetic val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1438
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1440
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 1442
    .local v0, "programDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    const-string v3, "editProgram"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1444
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1445
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1446
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 1456
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 1458
    .end local v0    # "programDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
