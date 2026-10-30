.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICInbodyH20Worker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

.field private static final SERVICE_UUID:Ljava/lang/String; = "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"


# instance fields
.field _alldata:[B

.field _alldataLen:I

.field _isWriteWithResp:Z

.field private _isWriting:Z

.field _readLen:I

.field _timer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _writeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private _writeIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6c

    .line 114
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6c

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriteWithResp:Z

    const-string v2, "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

    const-string v3, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    if-eqz p1, :cond_52

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    if-nez p1, :cond_52

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_52

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 126
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_6b

    :cond_52
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriteWithResp:Z

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 132
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6b
    :goto_6b
    return-void

    .line 116
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addWriteDatasNoEventId(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 106
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 108
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 182
    aget-byte v3, v1, v2

    const/16 v4, 0xf8

    const/4 v5, 0x6

    const/4 v6, 0x3

    const-string v7, ", all_len="

    const-string v8, "readlen="

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v3, v10, :cond_61

    aget-byte v3, v1, v9

    const/16 v11, 0x48

    if-ne v3, v11, :cond_61

    .line 183
    aget-byte v3, v1, v10

    add-int/lit8 v3, v3, -0xa

    and-int/lit8 v3, v3, 0x3f

    aget-byte v6, v1, v6

    add-int/lit8 v6, v6, -0xa

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v5, v6, 0x6

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    new-array v3, v4, [B

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldata:[B

    iput v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 186
    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 187
    array-length v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 188
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_343

    :cond_61
    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    const/16 v10, 0x64

    if-le v3, v10, :cond_343

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldata:[B

    iget v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 191
    array-length v11, v1

    invoke-static {v1, v2, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 192
    array-length v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 193
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    if-lt v1, v3, :cond_343

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldata:[B

    .line 196
    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v9}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 198
    invoke-virtual {v1, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 199
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    int-to-double v7, v3

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    double-to-int v3, v7

    .line 200
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v5

    int-to-double v7, v5

    div-double/2addr v7, v9

    .line 201
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v5

    int-to-double v11, v5

    div-double/2addr v11, v9

    .line 204
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v5

    int-to-double v13, v5

    div-double/2addr v13, v9

    .line 205
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v15

    add-int/2addr v5, v15

    int-to-double v4, v5

    .line 207
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_168
    const/16 v5, 0x29

    if-ge v4, v5, :cond_19e

    .line 222
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v5

    const/16 v7, 0x10

    if-eq v4, v7, :cond_18d

    const/16 v7, 0x11

    if-eq v4, v7, :cond_18d

    const/16 v7, 0x12

    if-eq v4, v7, :cond_18d

    const/16 v7, 0x13

    if-eq v4, v7, :cond_18d

    const/16 v7, 0x14

    if-eq v4, v7, :cond_18d

    if-ne v4, v6, :cond_18a

    int-to-double v7, v5

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    goto :goto_193

    :cond_18a
    int-to-double v7, v5

    div-double/2addr v7, v9

    goto :goto_194

    :cond_18d
    int-to-double v7, v5

    const-wide v11, 0x408f400000000000L    # 1000.0

    :goto_193
    div-double/2addr v7, v11

    .line 239
    :goto_194
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_19e
    const/16 v1, 0x1f

    .line 242
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/16 v1, 0x20

    .line 243
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/16 v1, 0x21

    .line 244
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/16 v1, 0x22

    .line 245
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/16 v1, 0x23

    .line 246
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/16 v1, 0x24

    .line 247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v14, 0x25

    .line 248
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    move-wide/from16 v16, v0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v14, 0x26

    .line 249
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    move-wide/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v14, 0x27

    .line 250
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    move-wide/from16 v20, v0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v14, 0x28

    .line 251
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-wide/from16 v22, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v4, v18

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v4, v22

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 267
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x100000

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    iput v2, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    iput v2, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    const/16 v2, 0xf8

    new-array v2, v2, [B

    iput-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldata:[B

    .line 274
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_32e

    .line 277
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_32e
    const/16 v0, 0x7d0

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;

    invoke-direct {v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;)V

    invoke-static {v0, v2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 287
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto :goto_344

    :cond_343
    :goto_343
    move-object v1, v0

    :goto_344
    return-void
.end method

.method private postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 4

    .line 174
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;-><init>()V

    .line 175
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->step:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 176
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->model:Ljava/lang/Object;

    .line 177
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDataEx:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 148
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    .line 149
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 158
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 95
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 98
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriteWithResp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriting:Z

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_writeIndex:Ljava/lang/Integer;

    const/16 v1, 0x118

    new-array v1, v1, [B

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldata:[B

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_alldataLen:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_readLen:I

    .line 87
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 294
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 299
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 302
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->discoverServices()V

    goto :goto_11

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerOver()V

    .line 307
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_11
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string p1, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    const-string p2, "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

    const/4 p3, 0x1

    .line 318
    invoke-virtual {p0, p3, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string p1, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    .line 313
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    const-string p3, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    .line 366
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 368
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p2, "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_isWriteWithResp:Z

    const-wide/16 p1, 0xa0

    .line 372
    :try_start_17
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 377
    :goto_1f
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->updateUser()V

    .line 379
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 329
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 330
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->updateUser()V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    .line 324
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->handlePacketData([BLjava/lang/String;)V

    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 387
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->writeNext()V

    return-void
.end method

.method public updateUser()V
    .registers 9

    .line 336
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    const/16 v1, 0xa

    mul-int/lit8 v0, v0, 0xa

    const/16 v2, 0xc

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0x48

    aput-byte v6, v2, v5

    const/16 v7, 0x10

    aput-byte v7, v2, v4

    const/4 v4, 0x3

    aput-byte v1, v2, v4

    const/4 v7, 0x4

    aput-byte v6, v2, v7

    const/4 v6, 0x5

    const/16 v7, 0x43

    aput-byte v7, v2, v6

    .line 344
    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ICSexTypeMale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    if-ne v6, v7, :cond_32

    const/4 v6, 0x1

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    int-to-byte v6, v6

    const/4 v7, 0x6

    aput-byte v6, v2, v7

    .line 345
    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    int-to-byte v6, v6

    const/4 v7, 0x7

    aput-byte v6, v2, v7

    const v6, 0xff00

    and-int/2addr v6, v0

    const/16 v7, 0x8

    shr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v6, 0x9

    aput-byte v0, v2, v6

    aput-byte v3, v2, v1

    const/16 v0, 0xb

    aput-byte v4, v2, v0

    :goto_58
    if-ge v5, v1, :cond_65

    aget-byte v0, v2, v1

    .line 353
    aget-byte v3, v2, v5

    add-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_65
    aget-byte v0, v2, v1

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method
