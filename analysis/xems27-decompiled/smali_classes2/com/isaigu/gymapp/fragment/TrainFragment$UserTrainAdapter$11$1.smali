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

    .line 1557
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 1559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1561
    return-void

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1570
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 1571
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1572
    const/4 v1, 0x1

    .line 1573
    .local v1, "update":Z
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1574
    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 1575
    const/4 v1, 0x0

    .line 1584
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 1585
    if-eqz v1, :cond_2

    .line 1586
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 1608
    :cond_2
    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 1609
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 1631
    .end local v1    # "update":Z
    :goto_0
    goto/16 :goto_4

    .line 1632
    :cond_3
    const/4 v1, 0x1

    .line 1633
    .restart local v1    # "update":Z
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1634
    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 1635
    const/4 v1, 0x0

    .line 1637
    :cond_4
    if-eqz v1, :cond_8

    .line 1638
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_update_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1639
    .local v2, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v4, 0x0

    .line 1640
    .local v4, "contain":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 1641
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1642
    const/4 v4, 0x1

    .line 1643
    invoke-interface {v2, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1640
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1646
    .end local v5    # "i":I
    :cond_6
    if-nez v4, :cond_7

    .line 1647
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_7
    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1650
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v4    # "contain":Z
    goto :goto_3

    .line 1651
    :cond_8
    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 1652
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1653
    .restart local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v4, 0x0

    .line 1654
    .restart local v4    # "contain":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 1655
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1656
    const/4 v4, 0x1

    .line 1657
    invoke-interface {v2, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1660
    .end local v5    # "i":I
    :cond_a
    if-nez v4, :cond_b

    .line 1661
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_b
    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1665
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v4    # "contain":Z
    :goto_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 1666
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v4, "file_name_train_data"

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1667
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d00c8

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 1668
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 1670
    .end local v1    # "update":Z
    :goto_4
    return-void
.end method
