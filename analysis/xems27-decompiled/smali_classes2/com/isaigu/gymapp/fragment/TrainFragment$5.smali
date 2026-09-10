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

    .line 248
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "containUser":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v2, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 254
    goto :goto_1

    .line 251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 259
    return-void

    .line 261
    :cond_2
    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 262
    .local v1, "editUserProgramDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    const-string v4, "editProgram"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v3, "multiEdit"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "wrapperArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 267
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v5, :cond_3

    .line 268
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 271
    .end local v4    # "i":I
    :cond_4
    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 272
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 273
    new-instance v4, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$5;)V

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 291
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 292
    return-void
.end method
