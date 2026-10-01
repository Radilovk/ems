.class public final Lcom/isaigu/gymapp/widget/XemsLocalApi;
.super Ljava/lang/Object;
.source "XemsLocalApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;
    }
.end annotation


# static fields
.field private static final FILE_OFFLINE_RECORDS:Ljava/lang/String; = "file_name_offline_train_record_data"

.field private static final FILE_RECORDS:Ljava/lang/String; = "xems_local_train_records"

.field private static final MAIN:Landroid/os/Handler;

.field private static volatile syncPrograms:Z

.field private static volatile syncUsers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 2

    .prologue
    .line 94
    if-eqz p0, :cond_5

    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 97
    :cond_5
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 5

    .prologue
    .line 112
    if-eqz p0, :cond_14

    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "xems_local_train_records"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 117
    :cond_14
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public static addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 124
    instance-of v3, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    if-eqz v3, :cond_10

    .line 125
    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 128
    :cond_28
    const-string v0, "xems_local_train_records"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 130
    :cond_2f
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method static allRecords()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "xems_local_train_records"

    const-class v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 149
    if-nez v0, :cond_53

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 152
    :goto_10
    const-string v0, "file_name_offline_train_record_data"

    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_52

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 154
    const/4 v0, 0x0

    move v2, v0

    :goto_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3f

    .line 155
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 156
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    .line 159
    :cond_3f
    const-string v0, "xems_local_train_records"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 160
    const-string v0, "file_name_offline_train_record_data"

    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 162
    :cond_52
    return-object v1

    :cond_53
    move-object v1, v0

    goto :goto_10
.end method

.method private static answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 264
    if-nez p0, :cond_3

    .line 281
    :goto_2
    return-void

    .line 267
    :cond_3
    new-instance v0, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;-><init>()V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setCode(I)V

    .line 269
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setMessage(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setData(Ljava/lang/Object;)V

    .line 271
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalApi;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;-><init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method static answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 3

    .prologue
    .line 88
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    :goto_d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 91
    return-void

    .line 90
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d
.end method

.method static answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 68
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    :goto_d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 70
    return-void

    .line 69
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d
.end method

.method public static deleteProgramTrainData(JJLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 7

    .prologue
    .line 105
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeProgram(J)V

    .line 106
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static getTrainRecordList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 9

    .prologue
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v3

    .line 137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-ltz v1, :cond_2f

    .line 138
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 139
    if-eqz v0, :cond_2b

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    if-eqz v4, :cond_2b

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_2b

    .line 140
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10

    .line 143
    :cond_2f
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 5

    .prologue
    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    :goto_a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 75
    return-void

    .line 74
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public static getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .registers 4

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncUsers:Z

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncUsers:Z

    .line 57
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->wrap(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_17

    .line 63
    :goto_16
    return-object v0

    .line 62
    :cond_17
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncPrograms:Z

    .line 83
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method static replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 4

    .prologue
    .line 167
    const-class v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 168
    const-string v1, "xems_local_train_records"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 169
    if-eqz v0, :cond_10

    .line 168
    :goto_c
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 170
    return-void

    .line 169
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_c
.end method

.method static requestCloudSync()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncUsers:Z

    .line 42
    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncPrograms:Z

    .line 43
    return-void
.end method

.method private static toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;)",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 175
    new-instance v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-direct {v6}, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;-><init>()V

    .line 177
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 179
    if-eqz v0, :cond_2d

    iget-object v7, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    if-eqz v7, :cond_2d

    iget-object v7, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-ltz v7, :cond_2d

    .line 180
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 177
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 183
    :cond_31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    .line 184
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->createTime:Ljava/util/Date;

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    iput-object v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    iput-object v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->trainName:Ljava/lang/String;

    .line 187
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->useType:I

    .line 188
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->hz:I

    .line 189
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->strenth:I

    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->maxBodyStrenth:I

    .line 191
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->minBodyStrenth:I

    .line 192
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulseContinue:I

    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulsePause:I

    .line 194
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulseWidth:I

    .line 195
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->inputRamp:I

    .line 196
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->outputRamp:I

    .line 197
    iget v0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    iput v0, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->workLength:I

    .line 198
    return-object v6
.end method

.method public static updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 2

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 102
    return-void
.end method
