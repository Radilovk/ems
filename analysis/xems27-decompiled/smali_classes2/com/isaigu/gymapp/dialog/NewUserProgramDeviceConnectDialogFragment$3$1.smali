.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;->onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

.field final synthetic val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    .line 352
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v0

    .line 355
    .local v0, "position":I
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 356
    .local v1, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 357
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 358
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 359
    .local v2, "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 360
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 364
    .end local v4    # "i":I
    :cond_1
    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 365
    .end local v2    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    goto :goto_1

    .line 366
    :cond_2
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_offline_delete_train_program_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 367
    .restart local v2    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 369
    .end local v2    # "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    goto :goto_1

    .line 371
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainData(JJLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 379
    :goto_1
    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v4, "file_name_train_data"

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 380
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$102(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)Ljava/util/List;

    .line 381
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$200(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$100(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 382
    return-void
.end method
