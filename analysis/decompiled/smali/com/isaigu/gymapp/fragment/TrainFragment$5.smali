.class Lcom/isaigu/gymapp/fragment/TrainFragment$5;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "containUser":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v5, :cond_1

    .line 252
    const/4 v1, 0x1

    .line 256
    :cond_0
    if-nez v1, :cond_2

    .line 257
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 291
    :goto_1
    return-void

    .line 250
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_2
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 261
    .local v2, "editUserProgramDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "editProgram"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string v5, "multiEdit"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v4, "wrapperArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 266
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v5, :cond_3

    .line 267
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 270
    :cond_4
    const-string v5, "data"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 271
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 272
    new-instance v5, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$5;)V

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 290
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto :goto_1
.end method
