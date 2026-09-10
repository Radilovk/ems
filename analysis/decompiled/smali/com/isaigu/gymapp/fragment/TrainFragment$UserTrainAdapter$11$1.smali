.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1544
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v7, 0x7f08006d

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1654
    :goto_0
    return-void

    .line 1553
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1554
    .local v3, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 1555
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1556
    const/4 v4, 0x1

    .line 1557
    .local v4, "update":Z
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1558
    iput-object p1, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 1559
    const/4 v4, 0x0

    .line 1568
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 1569
    if-eqz v4, :cond_2

    .line 1570
    new-instance v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;)V

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 1592
    :cond_2
    iput-object v8, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 1593
    new-instance v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;)V

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 1616
    .end local v4    # "update":Z
    :cond_3
    const/4 v4, 0x1

    .line 1617
    .restart local v4    # "update":Z
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1618
    iput-object p1, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 1619
    const/4 v4, 0x0

    .line 1621
    :cond_4
    if-eqz v4, :cond_8

    .line 1622
    const-string v5, "file_name_offline_update_train_program_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1623
    .local v2, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v0, 0x0

    .line 1624
    .local v0, "contain":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 1625
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1626
    const/4 v0, 0x1

    .line 1627
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1630
    :cond_6
    if-nez v0, :cond_7

    .line 1631
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    :cond_7
    const-string v5, "file_name_offline_update_train_program_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1649
    :goto_2
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 1650
    const-string v5, "file_name_train_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1651
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v7, 0x7f0800a3

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1652
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto/16 :goto_0

    .line 1635
    .end local v0    # "contain":Z
    .end local v1    # "i":I
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    :cond_8
    iput-object v8, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 1636
    const-string v5, "file_name_offline_train_program_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1637
    .restart local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v0, 0x0

    .line 1638
    .restart local v0    # "contain":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 1639
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1640
    const/4 v0, 0x1

    .line 1641
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1644
    :cond_a
    if-nez v0, :cond_b

    .line 1645
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_b
    const-string v5, "file_name_offline_train_program_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_2
.end method
