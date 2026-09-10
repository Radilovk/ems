.class final Lcom/isaigu/gymapp/train/utils/OperationUtil$1;
.super Ljava/lang/Object;
.source "OperationUtil.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/isaigu/gymapp/BaseActivity;

.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

.field final synthetic val$program:Lcom/isaigu/gymapp/bean/TrainProgram;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    const v1, 0x7f0d007b

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    .line 45
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$program:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 54
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 56
    const/4 v1, 0x1

    .line 57
    .local v1, "update":Z
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    .line 68
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 69
    if-eqz v1, :cond_2

    .line 72
    new-instance v2, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$1;-><init>(Lcom/isaigu/gymapp/train/utils/OperationUtil$1;)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0

    .line 94
    :cond_2
    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 95
    new-instance v2, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/train/utils/OperationUtil$1$2;-><init>(Lcom/isaigu/gymapp/train/utils/OperationUtil$1;)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 117
    .end local v1    # "update":Z
    :goto_0
    goto/16 :goto_4

    .line 118
    :cond_3
    const/4 v1, 0x1

    .line 119
    .restart local v1    # "update":Z
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 120
    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 121
    const/4 v1, 0x0

    .line 123
    :cond_4
    if-eqz v1, :cond_8

    .line 124
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_update_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 125
    .local v2, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v4, 0x0

    .line 126
    .local v4, "contain":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 127
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

    .line 128
    const/4 v4, 0x1

    .line 129
    invoke-interface {v2, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 132
    .end local v5    # "i":I
    :cond_6
    if-nez v4, :cond_7

    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7
    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 136
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v4    # "contain":Z
    goto :goto_3

    .line 137
    :cond_8
    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 138
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 139
    .restart local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v4, 0x0

    .line 140
    .restart local v4    # "contain":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 141
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

    .line 142
    const/4 v4, 0x1

    .line 143
    invoke-interface {v2, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 146
    .end local v5    # "i":I
    :cond_a
    if-nez v4, :cond_b

    .line 147
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_b
    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v5, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 151
    .end local v2    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v4    # "contain":Z
    :goto_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 152
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v4, "file_name_train_data"

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 153
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    const v3, 0x7f0d00c8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    .line 154
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 156
    .end local v1    # "update":Z
    :goto_4
    return-void
.end method
