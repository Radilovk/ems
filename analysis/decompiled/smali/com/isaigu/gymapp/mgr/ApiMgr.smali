.class public Lcom/isaigu/gymapp/mgr/ApiMgr;
.super Ljava/lang/Object;
.source "ApiMgr.java"


# static fields
.field public static final Password_Salt:Ljava/lang/String; = "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

.field public static final addProgramTrainDataListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/addProgramTrainDataList"

.field public static final addProgramTrainDataUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/addProgramTrainData"

.field public static final addTrainRecordListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/trainrecord/addTrainRecordList"

.field public static final addTrainRecordUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/trainrecord/addTrainRecord"

.field public static final baseUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app"

.field public static final checkUpdateAppUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/clientupdate/checkUpdateByAppType"

.field public static final deleteTrainProgramListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/deleteTrainProgramList"

.field public static final deleteTrainProgramUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/deleteTrainProgram"

.field public static final getCurrentProtocolUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/protocol/getCurrentProtocol"

.field public static final getSplashScreenUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/splash/getLastestVersionByType"

.field public static final getTrainRecordListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/trainrecord/getTrainRecordByUserId/"

.field public static final getUserBindMachineUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/machine/getUserBindMachine"

.field public static final getUserCustomers:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/getUserCustomers"

.field public static final getUserProgramTrainDataListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/getUserProgramTrainDataList"

.field public static final getVideoListByPageUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/video/getVideoListByPage"

.field public static final loginUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/loginWithoutVertifyCode"

.field public static final submitUserDataListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/submitUserDataList"

.field public static final submitUserDataUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/submitUserData"

.field public static final submitUserTrainDataUtl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/usertraindata/submitUserTrainData"

.field public static token:Ljava/lang/String; = null

.field public static final updateAppLogoUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/updateAppLogo"

.field public static final updateProgramTrainDataListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/updateProgramTrainDataList"

.field public static final updateProgramTrainDataUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/programtraindata/updateProgramTrainData"

.field public static final updateUserDataListUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/updateUserDataList"

.field public static final updateUserDataUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/updateUserData"

.field public static final uploadFileUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/file/upload"

.field public static final uploaduseTimeUrl:Ljava/lang/String; = "https://xemsplus.com/gymproject/app/users/uploadUseTime"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .param p0, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "json":Ljava/lang/String;
    const-string v2, "https://xemsplus.com/gymproject/app/programtraindata/addProgramTrainData"

    invoke-static {v2, v1, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 167
    return-void
.end method

.method public static addProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 6
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "trainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://xemsplus.com/gymproject/app/programtraindata/addProgramTrainDataList/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0, p3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 174
    return-void
.end method

.method public static addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .param p0, "trainRecordDTO"    # Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "json":Ljava/lang/String;
    const-string v2, "https://xemsplus.com/gymproject/app/trainrecord/addTrainRecord"

    invoke-static {v2, v1, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 225
    return-void
.end method

.method public static addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "recordDTOList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;>;"
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "json":Ljava/lang/String;
    const-string v2, "https://xemsplus.com/gymproject/app/trainrecord/addTrainRecordList"

    invoke-static {v2, v1, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 232
    return-void
.end method

.method public static checkUpdateApp(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;>;>;"
    const-string v0, "https://xemsplus.com/gymproject/app/clientupdate/checkUpdateByAppType/XEMS"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 250
    return-void
.end method

.method public static deleteProgramTrainData(JJLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "userId"    # J
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/programtraindata/deleteTrainProgram/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0, p4}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 205
    return-void
.end method

.method public static deleteProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 6
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://xemsplus.com/gymproject/app/programtraindata/deleteTrainProgramList/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0, p3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 212
    return-void
.end method

.method public static downloadApk(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "parent"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p1, "packageUrl"    # Ljava/lang/String;
    .param p2, "apkVersion"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr$1;-><init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;)V

    .line 350
    return-void
.end method

.method public static getCurrentProtocol(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/protocol/getCurrentProtocol/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 130
    return-void
.end method

.method public static getSplashScreen(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;>;>;"
    const-string v0, "https://xemsplus.com/gymproject/app/splash/getLastestVersionByType/XEMS"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 244
    return-void
.end method

.method public static getTrainRecordList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/trainrecord/getTrainRecordByUserId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 238
    return-void
.end method

.method public static getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/DeviceBean;>;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/machine/getUserBindMachine/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 142
    return-void
.end method

.method public static getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/users/getUserCustomers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 148
    return-void
.end method

.method public static getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://xemsplus.com/gymproject/app/programtraindata/getUserProgramTrainDataList/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 218
    return-void
.end method

.method public static getVideoListByPage(Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "searchDTO"    # Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/PageResponseVO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/PageResponseVO;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "https://xemsplus.com/gymproject/app/video/getVideoListByPage"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 256
    return-void
.end method

.method private static httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "header"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<TT;>;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 370
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 371
    .local v2, "interfacesTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 372
    .local v1, "genericType":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 373
    .local v3, "targetType":Ljava/lang/reflect/Type;
    new-instance v4, Lcom/isaigu/gymapp/mgr/ApiMgr$2;

    invoke-direct {v4, v3, p0, p1, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr$2;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    invoke-static {p0, p1, v4}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 401
    return-void
.end method

.method private static httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<TT;>;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 405
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 406
    .local v8, "interfacesTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 407
    .local v7, "genericType":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    aget-object v1, v7, v0

    .line 408
    .local v1, "targetType":Ljava/lang/reflect/Type;
    new-instance v0, Lcom/isaigu/gymapp/mgr/ApiMgr$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/mgr/ApiMgr$3;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 441
    return-void
.end method

.method public static login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 2
    .param p0, "dto"    # Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/LoginDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    const-string v0, "https://xemsplus.com/gymproject/app/users/loginWithoutVertifyCode"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 98
    return-void
.end method

.method public static needUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "clientVersion"    # Ljava/lang/String;
    .param p1, "serverVersion"    # Ljava/lang/String;

    .prologue
    .line 354
    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "clients":[Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "servers":[Ljava/lang/String;
    array-length v5, v0

    array-length v6, v4

    if-le v5, v6, :cond_0

    array-length v3, v4

    .line 357
    .local v3, "min":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 358
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_1

    .line 359
    const/4 v5, 0x1

    .line 365
    .end local v0    # "clients":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "min":I
    .end local v4    # "servers":[Ljava/lang/String;
    :goto_2
    return v5

    .line 356
    .restart local v0    # "clients":[Ljava/lang/String;
    .restart local v4    # "servers":[Ljava/lang/String;
    :cond_0
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    .restart local v2    # "i":I
    .restart local v3    # "min":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    .end local v0    # "clients":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "min":I
    .end local v4    # "servers":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static submitUserData(Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "dataDTO"    # Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "submit user data internal....."

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 105
    const-string v1, "https://xemsplus.com/gymproject/app/users/submitUserData"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 106
    return-void
.end method

.method public static submitUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "dataDTO":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;>;"
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "https://xemsplus.com/gymproject/app/users/submitUserDataList"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 112
    return-void
.end method

.method public static submitUserTrainData(Lcom/isaigu/gymapp/bean/dto/UserTrainDataDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "dataDTO"    # Lcom/isaigu/gymapp/bean/dto/UserTrainDataDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/UserTrainDataDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "https://xemsplus.com/gymproject/app/usertraindata/submitUserTrainData"

    const-string v2, ""

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 154
    return-void
.end method

.method public static updateAppLogo(Ljava/lang/Long;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .param p0, "userId"    # Ljava/lang/Long;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, "data":Ljava/util/Map;
    const-string v2, "appLogoUrl"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "https://xemsplus.com/gymproject/app/users/updateAppLogo"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, p2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 264
    return-void
.end method

.method public static updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 5
    .param p0, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "json":Ljava/lang/String;
    const-string v2, "https://xemsplus.com/gymproject/app/programtraindata/updateProgramTrainData"

    invoke-static {v2, v1, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 186
    return-void
.end method

.method public static updateProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 6
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "trainProgram":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainProgram;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "header":Ljava/util/Map;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://xemsplus.com/gymproject/app/programtraindata/updateProgramTrainDataList/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0, p3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 193
    return-void
.end method

.method public static updateUserData(Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "dataDTO"    # Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "https://xemsplus.com/gymproject/app/users/updateUserData"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 118
    return-void
.end method

.method public static updateUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "dataDTO":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;>;"
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/TrainUser;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "https://xemsplus.com/gymproject/app/users/updateUserDataList"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 124
    return-void
.end method

.method public static uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/UploadFileVO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Lcom/isaigu/gymapp/bean/vo/UploadFileVO;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "https://xemsplus.com/gymproject/app/file/upload"

    invoke-static {v1, p0, v0, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 136
    return-void
.end method

.method private static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "header"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<TT;>;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 446
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 447
    .local v8, "interfacesTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 448
    .local v7, "genericType":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    aget-object v1, v7, v0

    .line 449
    .local v1, "targetType":Ljava/lang/reflect/Type;
    new-instance v0, Lcom/isaigu/gymapp/mgr/ApiMgr$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/mgr/ApiMgr$4;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 477
    return-void
.end method

.method public static uploadUseTime(Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "dataDTO"    # Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<Lcom/isaigu/gymapp/bean/vo/ResponseData<Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "header":Ljava/util/Map;
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "https://xemsplus.com/gymproject/app/users/uploadUseTime"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 160
    return-void
.end method
