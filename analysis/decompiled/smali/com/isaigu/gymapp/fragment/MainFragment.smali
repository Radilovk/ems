.class public Lcom/isaigu/gymapp/fragment/MainFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

.field private fragment_now:Landroid/support/v4/app/Fragment;

.field frameLayout:Landroid/widget/FrameLayout;

.field final imageSelected:[I

.field final imageUnselect:[I

.field iv1:Landroid/widget/ImageView;

.field iv2:Landroid/widget/ImageView;

.field iv3:Landroid/widget/ImageView;

.field iv4:Landroid/widget/ImageView;

.field iv5:Landroid/widget/ImageView;

.field private iv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field li1:Landroid/widget/LinearLayout;

.field li2:Landroid/widget/LinearLayout;

.field li3:Landroid/widget/LinearLayout;

.field li4:Landroid/widget/LinearLayout;

.field li5:Landroid/widget/LinearLayout;

.field private ll_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

.field final title:[Ljava/lang/String;

.field trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;

.field tv5:Landroid/widget/TextView;

.field private tv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

.field videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    return-void

    .line 68
    :array_0
    .array-data 4
        0x7f030053
        0x7f03006b
        0x7f030057
        0x7f03006e
        0x7f030054
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x7f030069
        0x7f03006a
        0x7f030045
        0x7f03006d
        0x7f030046
    .end array-data
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0800be

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0800c4

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v2, 0x3

    const v3, 0x7f0800c9

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v2, 0x4

    const v3, 0x7f0800c0

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 175
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    const-string v1, "file_name_device_data"

    const-class v3, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 180
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    const-string v1, "file_name_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_1

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 184
    :cond_1
    const-string v1, "file_name_offline_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    .local v0, "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    const-string v1, "file_name_train_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_3

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 193
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    const-string v1, "file_name_register_protocol_data"

    const-class v3, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 235
    .end local v0    # "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :goto_0
    return-void

    .line 198
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 209
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getCurrentProtocol(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 221
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddUser()V

    .line 223
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineDeleteTrainProgram()V

    .line 225
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainRecord()V

    goto :goto_0
.end method

.method private initOfflineAddTrainPrograms()V
    .locals 6

    .prologue
    .line 316
    const-string v2, "file_name_offline_train_program_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 317
    .local v0, "offlineTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 319
    .local v1, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_0

    .line 321
    .end local v1    # "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v4, Lcom/isaigu/gymapp/fragment/MainFragment$7;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 332
    :goto_1
    return-void

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    goto :goto_1
.end method

.method private initOfflineAddTrainRecord()V
    .locals 3

    .prologue
    .line 369
    const-string v1, "file_name_offline_train_record_data"

    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 370
    .local v0, "trainRecordDTOList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 371
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 379
    :cond_0
    return-void
.end method

.method private initOfflineAddUser()V
    .locals 5

    .prologue
    .line 239
    const-string v3, "file_name_offline_user_data"

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 240
    .local v2, "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 243
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->submitUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 256
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;>;"
    :goto_1
    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    goto :goto_1
.end method

.method private initOfflineDeleteTrainProgram()V
    .locals 6

    .prologue
    .line 295
    const-string v3, "file_name_offline_delete_train_program_data"

    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 296
    .local v1, "offlineDeleteTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 299
    .local v2, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v2    # "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment$6;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v4, v5, v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 313
    .end local v0    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    goto :goto_1
.end method

.method private initOfflineUpdateTrainPrograms()V
    .locals 6

    .prologue
    .line 335
    const-string v2, "file_name_offline_update_train_program_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 336
    .local v0, "offlineUpdateTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 338
    .local v1, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_0

    .line 340
    .end local v1    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v4, Lcom/isaigu/gymapp/fragment/MainFragment$8;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v4}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 351
    :goto_1
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    goto :goto_1
.end method

.method private initOfflineUpdateUsers()V
    .locals 5

    .prologue
    .line 259
    const-string v3, "file_name_offline_update_user_data"

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 260
    .local v1, "offlineUpdateUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 263
    .local v2, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v2    # "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    :cond_0
    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment$4;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 276
    .end local v0    # "list1":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;>;"
    :goto_1
    return-void

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    goto :goto_1
.end method

.method private initTrainPrograms()V
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$9;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 366
    return-void
.end method

.method private initUsers()V
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 291
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    const v0, 0x7f0f0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 121
    const v0, 0x7f0f0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0f0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0f014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0f014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0f0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0f0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0f014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0f014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0f0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    .line 134
    const v0, 0x7f0f0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    .line 135
    const v0, 0x7f0f0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    .line 136
    const v0, 0x7f0f014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f0f014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method


# virtual methods
.method public changePageFragment(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 400
    sparse-switch p1, :sswitch_data_0

    .line 437
    :goto_0
    return-void

    .line 402
    :sswitch_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 405
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 412
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 416
    :sswitch_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-nez v0, :cond_2

    .line 417
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 419
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 423
    :sswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-nez v0, :cond_3

    .line 424
    new-instance v0, Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 426
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 427
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 430
    :sswitch_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-nez v0, :cond_4

    .line 431
    new-instance v0, Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 433
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0143 -> :sswitch_0
        0x7f0f0146 -> :sswitch_1
        0x7f0f0149 -> :sswitch_2
        0x7f0f014c -> :sswitch_3
        0x7f0f014f -> :sswitch_4
    .end sparse-switch
.end method

.method public changePageSelect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 465
    if-ne p1, v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0200b7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 472
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0200b8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 473
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 474
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 477
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 389
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x7f0f0143 -> :sswitch_0
        0x7f0f0146 -> :sswitch_0
        0x7f0f0149 -> :sswitch_0
        0x7f0f014c -> :sswitch_0
        0x7f0f014f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initData()V

    .line 88
    const v1, 0x7f0f0143

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    .line 90
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 98
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "from"    # Landroid/support/v4/app/Fragment;
    .param p2, "to"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v2, 0x7f0f0140

    .line 445
    if-nez p2, :cond_0

    .line 461
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 448
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    if-nez p1, :cond_1

    .line 450
    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 459
    :goto_1
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method protected viewId()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f040043

    return v0
.end method
