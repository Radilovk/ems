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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

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
            "Ljava/util/List<",
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

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 71
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    .line 73
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0c0060
        0x7f0c007a
        0x7f0c0064
        0x7f0c007d
        0x7f0c0061
    .end array-data

    :array_1
    .array-data 4
        0x7f0c0078
        0x7f0c0079
        0x7f0c0052
        0x7f0c007c
        0x7f0c0053
    .end array-data
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00e5

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00d2

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00f0

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00e7

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 181
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    const-string v2, "file_name_device_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 186
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v2, "file_name_user_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 190
    :cond_1
    const-class v0, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v1, "file_name_offline_user_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    .local v0, "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v3, "file_name_train_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_3

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 199
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-class v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    const-string v3, "file_name_register_protocol_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 200
    return-void

    .line 204
    .end local v0    # "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getCurrentProtocol(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 228
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddUser()V

    .line 230
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineDeleteTrainProgram()V

    .line 232
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainRecord()V

    .line 242
    return-void
.end method

.method private initOfflineAddTrainPrograms()V
    .locals 5

    .line 323
    const-class v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v1, "file_name_offline_train_program_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 324
    .local v0, "offlineTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 326
    .local v2, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 327
    .end local v2    # "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    goto :goto_0

    .line 328
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment$7;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1

    .line 337
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    .line 339
    :goto_1
    return-void
.end method

.method private initOfflineAddTrainRecord()V
    .locals 2

    .line 376
    const-class v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    const-string v1, "file_name_offline_train_record_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 377
    .local v0, "trainRecordDTOList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 378
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 386
    :cond_0
    return-void
.end method

.method private initOfflineAddUser()V
    .locals 5

    .line 246
    const-class v0, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v1, "file_name_offline_user_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 247
    .local v0, "offlineUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/mgr/DataMgr;->getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->submitUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 260
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;>;"
    goto :goto_1

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    .line 263
    :goto_1
    return-void
.end method

.method private initOfflineDeleteTrainProgram()V
    .locals 5

    .line 302
    const-class v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v1, "file_name_offline_delete_train_program_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 303
    .local v0, "offlineDeleteTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 306
    .local v3, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v3    # "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    goto :goto_0

    .line 308
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v4, Lcom/isaigu/gymapp/fragment/MainFragment$6;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v1, v4}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 317
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_1

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    .line 320
    :goto_1
    return-void
.end method

.method private initOfflineUpdateTrainPrograms()V
    .locals 5

    .line 342
    const-class v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v1, "file_name_offline_update_train_program_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 343
    .local v0, "offlineUpdateTrainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 345
    .local v2, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 346
    .end local v2    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    goto :goto_0

    .line 347
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment$8;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    .line 358
    :goto_1
    return-void
.end method

.method private initOfflineUpdateUsers()V
    .locals 5

    .line 266
    const-class v0, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v1, "file_name_offline_update_user_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 267
    .local v0, "offlineUpdateUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 270
    .local v3, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    goto :goto_0

    .line 272
    :cond_0
    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 280
    .end local v1    # "list1":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;>;"
    goto :goto_1

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    .line 283
    :goto_1
    return-void
.end method

.method private initTrainPrograms()V
    .locals 3

    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$9;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 373
    return-void
.end method

.method private initUsers()V
    .locals 3

    .line 286
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 298
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 126
    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 127
    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0900cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0900ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0901be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    .line 140
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    .line 141
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method


# virtual methods
.method public changePageFragment(I)V
    .locals 2
    .param p1, "id"    # I

    .line 407
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 447
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 438
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 442
    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-nez v0, :cond_2

    .line 429
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 431
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 433
    goto :goto_0

    .line 421
    :pswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-nez v0, :cond_3

    .line 422
    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 424
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 426
    goto :goto_0

    .line 414
    :pswitch_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-nez v0, :cond_4

    .line 415
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 417
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 419
    nop

    .line 451
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900ec
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changePageSelect(I)V
    .locals 4
    .param p1, "index"    # I

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 479
    if-ne p1, v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 481
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 482
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 483
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 486
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 487
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 491
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    .line 399
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900ec
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initData()V

    .line 91
    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    .line 93
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 100
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v1, :cond_5

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    nop

    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 123
    return-void
.end method

.method public switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "from"    # Landroid/support/v4/app/Fragment;
    .param p2, "to"    # Landroid/support/v4/app/Fragment;

    .line 459
    if-nez p2, :cond_0

    .line 460
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 462
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 463
    const v1, 0x7f0900a3

    if-nez p1, :cond_1

    .line 464
    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 473
    :goto_0
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 475
    return-void
.end method

.method protected viewId()I
    .locals 1

    .line 80
    const v0, 0x7f0b0044

    return v0
.end method
