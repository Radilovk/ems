.class Lcom/isaigu/gymapp/train/TrainViewHolder$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 118
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$TrainViewHolder$1(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 1
    .param p1, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 130
    return-void
.end method

.method public synthetic lambda$onNoDoubleClick$1$TrainViewHolder$1(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .locals 2
    .param p1, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .param p2, "checks"    # Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$AznCd_PX9U_AFipHY0-fJKnkhF8;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder$1;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 122
    .local v0, "programDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    const-string v3, "editProgram"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 126
    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$Z2GxQ76UHCmqHpj7Cqw7-6ABzKY;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$1$Z2GxQ76UHCmqHpj7Cqw7-6ABzKY;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder$1;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 131
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 133
    .end local v0    # "programDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
