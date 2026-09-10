.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;->onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

.field final synthetic val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 305
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v1

    .line 306
    .local v1, "position":I
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 307
    .local v2, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 309
    const-string v4, "file_name_offline_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 310
    .local v3, "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 311
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    :cond_1
    const-string v4, "file_name_offline_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 330
    .end local v0    # "i":I
    .end local v3    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    :goto_1
    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 331
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$002(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)Ljava/util/List;

    .line 332
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 333
    return-void

    .line 317
    :cond_2
    const-string v4, "file_name_offline_delete_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 318
    .restart local v3    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v4, "file_name_offline_delete_train_program_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_1

    .line 322
    .end local v3    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1$1;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1$1;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3$1;)V

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainData(JJLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1
.end method
