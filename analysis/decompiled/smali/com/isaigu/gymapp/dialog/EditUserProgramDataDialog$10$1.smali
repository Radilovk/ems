.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v6, 0x7f08006d

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 511
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 512
    const/4 v3, 0x1

    .line 513
    .local v3, "update":Z
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 514
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iput-object p1, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 515
    const/4 v3, 0x0

    .line 517
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 518
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 519
    const/4 v3, 0x1

    .line 520
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v4, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 524
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 525
    if-eqz v3, :cond_4

    .line 526
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;)V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_0

    .line 517
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 556
    :cond_4
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;)V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_0

    .line 587
    .end local v1    # "i":I
    .end local v3    # "update":Z
    :cond_5
    const/4 v3, 0x1

    .line 588
    .restart local v3    # "update":Z
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 589
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iput-object p1, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 590
    const/4 v3, 0x0

    .line 592
    :cond_6
    if-eqz v3, :cond_b

    .line 593
    const-string v4, "file_name_offline_update_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 594
    .local v2, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v0, 0x0

    .line 595
    .local v0, "contain":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 596
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 597
    const/4 v0, 0x1

    .line 598
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 601
    :cond_8
    if-nez v0, :cond_9

    .line 602
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_9
    const-string v4, "file_name_offline_update_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 619
    :goto_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 620
    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 621
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 623
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V

    .line 625
    :cond_a
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 626
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto/16 :goto_0

    .line 606
    .end local v0    # "contain":Z
    .end local v1    # "i":I
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    :cond_b
    const-string v4, "file_name_offline_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 607
    .restart local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v0, 0x0

    .line 608
    .restart local v0    # "contain":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 609
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 610
    const/4 v0, 0x1

    .line 611
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 614
    :cond_d
    if-nez v0, :cond_e

    .line 615
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_e
    const-string v4, "file_name_offline_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    goto/16 :goto_3
.end method
