.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserProgramDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    :try_start_0
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z

    move-result v1

    .line 483
    .local v1, "check":Z
    if-nez v1, :cond_1

    .line 636
    .end local v1    # "check":Z
    :cond_0
    :goto_0
    return-void

    .line 486
    .restart local v1    # "check":Z
    :cond_1
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 487
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 488
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v2, "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 491
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    :cond_3
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v1    # "check":Z
    .end local v2    # "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 633
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v8, 0x7f0800a2

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "check":Z
    :cond_4
    :try_start_1
    new-instance v3, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v3}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 499
    .local v3, "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "name"

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setArguments(Landroid/os/Bundle;)V

    .line 504
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    new-instance v6, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    invoke-direct {v6, p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 630
    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
