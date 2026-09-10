.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$position:I

.field final synthetic val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1131
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->getProgramDataBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1132
    .local v0, "bean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 1133
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$1;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1138
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-gtz v3, :cond_2

    .line 1139
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 1141
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;)V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1146
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$position:I

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1000(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1149
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 1150
    .local v2, "trainRecordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    if-eqz v2, :cond_0

    .line 1151
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1152
    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;)V

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 1286
    .end local v2    # "trainRecordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    :cond_0
    :goto_0
    return-void

    .line 1168
    .restart local v2    # "trainRecordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    :cond_1
    const-string v3, "file_name_offline_train_record_data"

    const-class v4, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1169
    .local v1, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v3, "file_name_offline_train_record_data"

    const-class v4, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_0

    .line 1175
    .end local v1    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;>;"
    .end local v2    # "trainRecordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v3, :cond_3

    .line 1176
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1177
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1232
    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1233
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
