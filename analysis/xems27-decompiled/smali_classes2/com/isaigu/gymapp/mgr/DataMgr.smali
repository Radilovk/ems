.class public Lcom/isaigu/gymapp/mgr/DataMgr;
.super Ljava/lang/Object;
.source "DataMgr.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# static fields
.field public static instance:Lcom/isaigu/gymapp/mgr/DataMgr;

.field public static singleMode:Z


# instance fields
.field public deviceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field public loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

.field public registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

.field public trainData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation
.end field

.field public trainUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field

.field public trainingUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;
    .locals 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/mgr/DataMgr;->instance:Lcom/isaigu/gymapp/mgr/DataMgr;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/isaigu/gymapp/mgr/DataMgr;

    invoke-direct {v0}, Lcom/isaigu/gymapp/mgr/DataMgr;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/mgr/DataMgr;->instance:Lcom/isaigu/gymapp/mgr/DataMgr;

    .line 47
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/mgr/DataMgr;->instance:Lcom/isaigu/gymapp/mgr/DataMgr;

    return-object v0
.end method

.method private handleDataAvailable(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "dataBundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 267
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 268
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 270
    .local v1, "data":[B
    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ble/ProtocolParser;->parse(Ljava/lang/String;[B)V

    .line 272
    return-void
.end method


# virtual methods
.method public addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 4
    .param p1, "program"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "contain":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    .line 155
    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    return-void
.end method

.method public addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 7
    .param p1, "user"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "contain":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 139
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    .line 141
    goto :goto_1

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    return-void
.end method

.method public addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z
    .locals 5
    .param p1, "trainingUser"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 71
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, "contain":Z
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 77
    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 83
    .end local v2    # "i":I
    :cond_3
    if-nez v1, :cond_4

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_4
    return v0

    .line 72
    .end local v1    # "contain":Z
    :cond_5
    :goto_2
    return v0
.end method

.method public getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v1

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    return-object v0
.end method

.method public getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;
    .locals 3
    .param p1, "trainUser"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 195
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;-><init>()V

    .line 197
    .local v0, "userDataDTO":Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->parentId:Ljava/lang/Long;

    .line 198
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->name:Ljava/lang/String;

    .line 199
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->inputId:Ljava/lang/String;

    .line 201
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 202
    iget v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->height:I

    .line 203
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->birtyday:Ljava/util/Date;

    .line 204
    iget v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->weight:F

    .line 205
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->iconUrl:Ljava/lang/String;

    .line 206
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->email:Ljava/lang/String;

    .line 207
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->phone:Ljava/lang/String;

    .line 208
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->city:Ljava/lang/String;

    .line 209
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->address:Ljava/lang/String;

    .line 210
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->permitProtocol:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->permitProtocol:Z

    .line 211
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;->trainName:Ljava/lang/String;

    .line 213
    return-object v0
.end method

.method public getTrainUser(J)Lcom/isaigu/gymapp/bean/TrainUser;
    .locals 4
    .param p1, "id"    # J

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 128
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    return-object v1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    return-object v0
.end method

.method public getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;
    .locals 3
    .param p1, "trainUser"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 217
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;-><init>()V

    .line 219
    .local v0, "userDataDTO":Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;
    iget-wide v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->id:Ljava/lang/Long;

    .line 220
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->name:Ljava/lang/String;

    .line 221
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->inputId:Ljava/lang/String;

    .line 223
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 224
    iget v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->height:I

    .line 225
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->birtyday:Ljava/util/Date;

    .line 226
    iget v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->weight:F

    .line 227
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->iconUrl:Ljava/lang/String;

    .line 228
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->email:Ljava/lang/String;

    .line 229
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->phone:Ljava/lang/String;

    .line 230
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->city:Ljava/lang/String;

    .line 231
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->address:Ljava/lang/String;

    .line 232
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->permitProtocol:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->permitProtocol:Z

    .line 233
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;->trainName:Ljava/lang/String;

    .line 235
    return-object v0
.end method

.method public getUserUsedTrainType(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 168
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 169
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 170
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 172
    .local v2, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-nez v3, :cond_0

    .line 173
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v3

    .line 175
    :cond_0
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 176
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v3

    .line 178
    :cond_1
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 179
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v3

    .line 181
    :cond_2
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 182
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v3

    .line 168
    .end local v2    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_4
    goto :goto_2

    .line 165
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 2
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 240
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 241
    .local v0, "event":S
    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/mgr/DataMgr;->handleDataAvailable(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 253
    nop

    .line 264
    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 52
    const/16 v0, 0x3f4

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 53
    const/16 v0, 0x3ed

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 54
    const/16 v0, 0x3f3

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 55
    const/16 v0, 0x3f2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 56
    const/16 v0, 0x3f1

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 57
    const/16 v0, 0x3f0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 58
    const/16 v0, 0x3ef

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 59
    return-void
.end method

.method public removeAllTrainingUser()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    :cond_0
    return-void
.end method

.method public removeTrainingUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 63
    return-void
.end method
