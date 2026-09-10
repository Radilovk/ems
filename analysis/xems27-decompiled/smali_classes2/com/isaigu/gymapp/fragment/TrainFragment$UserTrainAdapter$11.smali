.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;
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

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1549
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1553
    new-instance v0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 1554
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1555
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1557
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 1672
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 1673
    return-void
.end method
