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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 2

    .line 99
    if-eqz p0, :cond_5

    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 102
    :cond_5
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 4

    .line 117
    if-eqz p0, :cond_14

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-class p0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    const-string v1, "xems_local_train_records"

    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 122
    :cond_14
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public static addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .line 126
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 129
    instance-of v2, v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    if-eqz v2, :cond_27

    .line 130
    check-cast v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_27
    goto :goto_10

    .line 133
    :cond_28
    const-class p0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    const-string v1, "xems_local_train_records"

    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 135
    :cond_2f
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method static allRecords()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;"
        }
    .end annotation

    .line 153
    const-class v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    const-string v1, "xems_local_train_records"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 154
    if-nez v0, :cond_f

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_f
    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    const-string v3, "file_name_offline_train_record_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_4b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 159
    const/4 v4, 0x0

    :goto_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 160
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 161
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->toVo(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Ljava/util/List;)Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 164
    :cond_3c
    const-class v2, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 165
    const-class v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 167
    :cond_4b
    return-object v0
.end method

.method private static answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V
    .registers 4

    .line 269
    if-nez p0, :cond_3

    .line 270
    return-void

    .line 272
    :cond_3
    new-instance v0, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;-><init>()V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setCode(I)V

    .line 274
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setMessage(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->setData(Ljava/lang/Object;)V

    .line 276
    sget-object p1, Lcom/isaigu/gymapp/widget/XemsLocalApi;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;-><init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method static answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 3

    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 94
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    goto :goto_13

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 3

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 68
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    goto :goto_13

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static deleteProgramTrainData(JJLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 5

    .line 110
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeProgram(J)V

    .line 111
    const/4 p0, 0x0

    invoke-static {p4, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static getTrainRecordList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 10

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f
    if-ltz v2, :cond_2d

    .line 143
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 144
    if-eqz v3, :cond_2a

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    if-eqz v4, :cond_2a

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p0

    if-nez v6, :cond_2a

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 148
    :cond_2d
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 3

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object p0

    iget-object p0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    if-eqz p0, :cond_b

    goto :goto_10

    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .registers 3

    .line 55
    sget-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncUsers:Z

    if-eqz p0, :cond_17

    if-eqz p2, :cond_17

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 56
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncUsers:Z

    .line 57
    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->wrap(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    move-result-object p0

    .line 58
    if-eqz p0, :cond_17

    .line 59
    return-object p0

    .line 62
    :cond_17
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 63
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .registers 3

    .line 81
    sget-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncPrograms:Z

    if-eqz p0, :cond_17

    if-eqz p2, :cond_17

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 82
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsLocalApi;->syncPrograms:Z

    .line 83
    const/4 p0, 0x2

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->wrap(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    move-result-object p0

    .line 84
    if-eqz p0, :cond_17

    .line 85
    return-object p0

    .line 88
    :cond_17
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 89
    const/4 p0, 0x0

    return-object p0
.end method

.method static replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3

    .line 172
    const-class v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 173
    const-class v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 174
    if-eqz p0, :cond_b

    goto :goto_10

    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    :goto_10
    const-string v1, "xems_local_train_records"

    invoke-static {v1, v0, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 175
    return-void
.end method

.method static requestCloudSync()V
    .registers 1

    .line 41
    const/4 v0, 0x1

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
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;)",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;-><init>()V

    .line 181
    nop

    .line 182
    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_30

    .line 183
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 184
    if-eqz v6, :cond_2d

    iget-object v7, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    if-eqz v7, :cond_2d

    iget-object v7, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-ltz v9, :cond_2d

    .line 185
    iget-object v4, v6, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v1

    .line 182
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 188
    :cond_30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->id:Ljava/lang/Long;

    .line 189
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->createTime:Ljava/util/Date;

    .line 190
    iget-object p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    .line 191
    iget-object p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->trainName:Ljava/lang/String;

    .line 192
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->useType:I

    .line 193
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->hz:I

    .line 194
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->strenth:I

    .line 195
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->maxBodyStrenth:I

    .line 196
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->minBodyStrenth:I

    .line 197
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulseContinue:I

    .line 198
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulsePause:I

    .line 199
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulseWidth:I

    .line 200
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->inputRamp:I

    .line 201
    iget p1, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    iput p1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->outputRamp:I

    .line 202
    iget p0, p0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    iput p0, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->workLength:I

    .line 203
    return-object v0
.end method

.method public static updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 2

    .line 106
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 107
    return-void
.end method
