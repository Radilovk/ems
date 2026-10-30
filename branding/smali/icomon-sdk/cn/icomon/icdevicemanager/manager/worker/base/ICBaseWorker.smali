.class public Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.super Ljava/lang/Object;
.source "ICBaseWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;
    }
.end annotation


# instance fields
.field private _bScanSelf:Z

.field private _isBLEConnected:Z

.field private _readRSSITime:I

.field private _readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field public bStop:Z

.field public bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public identifier:Ljava/lang/String;

.field public isNotUpdateUserByGlobal:Z

.field public mtu:I

.field public otaFilePath:Ljava/lang/String;

.field public push_type:I

.field public scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

.field public self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

.field public state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

.field public userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

.field public userInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_isBLEConnected(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_isBLEConnected:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_isBLEConnected:Z

    const/16 v1, 0x1388

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    return-void
.end method

.method private onHandleBleUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V
    .registers 6

    .line 518
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_f9

    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 520
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$4;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, ""

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_118

    goto/16 :goto_117

    .line 596
    :pswitch_21
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    .line 597
    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_2d

    .line 598
    iget v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->mtuSize:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->mtu:I

    .line 600
    :cond_2d
    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->mtuSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onMtuChanged(Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 587
    :pswitch_3a
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadRSSIModel;

    if-eqz v0, :cond_117

    .line 589
    iget-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadRSSIModel;->rssi:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postRSSI(I)V

    .line 590
    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadRSSIModel;->rssi:Ljava/lang/Integer;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUploadRSSI(Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 581
    :pswitch_52
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;

    if-eqz v0, :cond_5b

    .line 582
    iget-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->data:[B

    goto :goto_5c

    :cond_5b
    move-object v1, v3

    :goto_5c
    if-eqz v0, :cond_61

    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->service:Ljava/lang/String;

    goto :goto_62

    :cond_61
    move-object v2, v3

    :goto_62
    if-eqz v0, :cond_66

    iget-object v3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    :cond_66
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 575
    :pswitch_6d
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;

    if-eqz v0, :cond_76

    .line 576
    iget-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->service:Ljava/lang/String;

    goto :goto_77

    :cond_76
    move-object v1, v3

    :goto_77
    if-eqz v0, :cond_7b

    iget-object v3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    :cond_7b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 569
    :pswitch_82
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

    if-eqz v0, :cond_8a

    .line 570
    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->service:Ljava/lang/String;

    :cond_8a
    if-eqz v0, :cond_8e

    iget-object v3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    :cond_8e
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 563
    :pswitch_95
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    if-eqz v0, :cond_9d

    .line 564
    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->service:Ljava/lang/String;

    :cond_9d
    if-eqz v0, :cond_a1

    iget-object v3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->characteristics:Ljava/util/List;

    :cond_a1
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V

    goto/16 :goto_117

    .line 557
    :pswitch_a8
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanServiceModel;

    if-eqz v0, :cond_b0

    .line 558
    iget-object v3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanServiceModel;->services:Ljava/util/List;

    :cond_b0
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_117

    .line 537
    :pswitch_b6
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;

    .line 538
    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    if-eqz v2, :cond_c3

    .line 540
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    goto :goto_c7

    .line 544
    :cond_c3
    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    :goto_c7
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 546
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v2, :cond_d1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_isBLEConnected:Z

    goto :goto_d3

    :cond_d1
    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_isBLEConnected:Z

    :goto_d3
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 552
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V

    goto :goto_117

    .line 524
    :pswitch_db
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_bScanSelf:Z

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 526
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 527
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    goto :goto_117

    .line 531
    :cond_f5
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    goto :goto_117

    .line 610
    :cond_f9
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$4;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_108

    goto :goto_117

    .line 614
    :cond_108
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;

    .line 615
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_isBLEConnected:Z

    .line 617
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V

    :cond_117
    :goto_117
    return-void

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_db
        :pswitch_b6
        :pswitch_a8
        :pswitch_95
        :pswitch_82
        :pswitch_6d
        :pswitch_52
        :pswitch_3a
        :pswitch_21
    .end packed-switch
.end method

.method private onHandleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V
    .registers 6

    .line 629
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeMemoryWaring:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_b

    .line 631
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onReceiveMemoryWarning()V

    goto/16 :goto_b1

    .line 633
    :cond_b
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_46

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    if-eqz v0, :cond_16

    return-void

    .line 642
    :cond_16
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 645
    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 649
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v0

    .line 650
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 651
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "update user info:%s"

    invoke-static {v1, p1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 653
    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    goto :goto_b1

    .line 655
    :cond_46
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_b1

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    if-eqz v0, :cond_51

    return-void

    .line 659
    :cond_51
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 661
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_62

    goto :goto_8b

    .line 666
    :cond_62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 670
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 671
    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_66

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 684
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_ac

    .line 687
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 688
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_ac
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 691
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfoList(Ljava/util/List;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method private onHandleSettingEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;)V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 698
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 700
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne v0, v1, :cond_5b

    .line 702
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->model:Ljava/lang/Object;

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 704
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 705
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, p1, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    :cond_2e
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 708
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v1

    .line 709
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 710
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "update user info:%s"

    invoke-static {v2, v0, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 712
    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 713
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, p1, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_de

    .line 715
    :cond_5b
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserList:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne v0, v1, :cond_d5

    .line 716
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->model:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_72

    goto :goto_9b

    .line 723
    :cond_72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 727
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 728
    invoke-virtual {v2, v4}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    goto :goto_76

    :cond_9b
    :goto_9b
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 741
    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_bc

    .line 744
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 745
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_bc
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 748
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 749
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, p1, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_de

    :cond_cb
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 752
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, p1, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_de

    .line 756
    :cond_d5
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->model:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V

    :cond_de
    :goto_de
    return-void
.end method

.method private postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    .line 494
    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Ljava/lang/Object;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    move-result-object p1

    .line 495
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method


# virtual methods
.method public cancelConnect()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 404
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 407
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDisconnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public connect()V
    .registers 3

    .line 398
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeConnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public dealloc()V
    .registers 2

    .line 339
    invoke-static {p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->unsubscribe(Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_d

    .line 341
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_d
    return-void
.end method

.method public discoverCharacteristics(Ljava/lang/String;)V
    .registers 4

    .line 419
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->setService(Ljava/lang/String;Ljava/util/List;)V

    .line 421
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public discoverServices()V
    .registers 3

    .line 412
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 414
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const-string v4, "create %s worker, userInfo:%s"

    invoke-static {v0, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_bScanSelf:Z

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 179
    invoke-virtual {p4}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    if-eqz p5, :cond_4d

    .line 184
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 185
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4d
    const/16 p1, 0x14

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->mtu:I

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    .line 193
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    .line 197
    const-class p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 198
    const-class p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 199
    const-class p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 200
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p1

    iget p1, p1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_92

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 202
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne p1, p2, :cond_92

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 212
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 217
    :cond_92
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWorker()V

    return-void
.end method

.method public initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;I)V"
        }
    .end annotation

    .line 285
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const-string v4, "create %s worker, userInfo:%s"

    invoke-static {v0, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_bScanSelf:Z

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 291
    invoke-virtual {p4}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iput p6, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    const/16 p1, 0x14

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->mtu:I

    .line 295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    if-eqz p5, :cond_53

    .line 298
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 299
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_53
    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    .line 304
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    .line 308
    const-class p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 309
    const-class p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 310
    const-class p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 311
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p1

    iget p1, p1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_94

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 313
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne p1, p2, :cond_94

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$3;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 323
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 327
    :cond_94
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWorker()V

    return-void
.end method

.method public initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const-string v4, "create %s worker, userInfo:%s"

    invoke-static {v0, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_bScanSelf:Z

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    .line 236
    invoke-virtual {p4}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    if-eqz p5, :cond_4d

    .line 240
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfoList:Ljava/util/List;

    .line 241
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4d
    const-string p1, "ota_file_path"

    .line 246
    invoke-interface {p6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const/16 p1, 0x14

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->mtu:I

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    .line 250
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->isNotUpdateUserByGlobal:Z

    .line 254
    const-class p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 255
    const-class p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 256
    const-class p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-static {p1, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 257
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p1

    iget p1, p1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_9c

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 259
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne p1, p2, :cond_9c

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRSSITime:I

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$2;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 269
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 273
    :cond_9c
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWorker()V

    return-void
.end method

.method public initWorker()V
    .registers 1

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

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

    return-void
.end method

.method public onMtuChanged(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    .line 349
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    if-eqz v0, :cond_a

    .line 350
    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onHandleBleUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V

    goto :goto_1d

    .line 352
    :cond_a
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    if-eqz v0, :cond_14

    .line 353
    check-cast p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onHandleSettingEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;)V

    goto :goto_1d

    .line 355
    :cond_14
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    if-eqz v0, :cond_1d

    .line 356
    check-cast p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onHandleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onReceiveMemoryWarning()V
    .registers 1

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 2

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 842
    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    return-void
.end method

.method public onUpdateUserInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    return-void
.end method

.method public onUploadRSSI(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public postAdv([B)V
    .registers 3

    .line 479
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypePostAdv:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-direct {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    .line 489
    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    move-result-object p1

    .line 490
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V
    .registers 4

    .line 500
    new-instance v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;-><init>()V

    .line 501
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->feedbackEventId:Ljava/lang/Integer;

    .line 502
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 503
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 504
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V
    .registers 3

    .line 510
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->create(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    move-result-object p1

    .line 511
    iput-object p2, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    .line 512
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public postRSSI(I)V
    .registers 3

    .line 460
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadRSSI:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public postReConnect()V
    .registers 2

    .line 473
    invoke-static {p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->unsubscribe(Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 474
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeReConnect:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    const/4 v2, 0x0

    .line 483
    invoke-static {p1, v0, v1, p2, v2}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    move-result-object p1

    .line 484
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public postWorkerOver()V
    .registers 4

    .line 465
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 466
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "worker over"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeWorkerOver:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 446
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;-><init>()V

    .line 447
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;->service:Ljava/lang/String;

    .line 448
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;->characteristic:Ljava/lang/String;

    .line 449
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeReadValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public readRSSI()V
    .registers 3

    .line 454
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeReadRSSI:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public requestMtu(I)V
    .registers 3

    .line 393
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeRequestMTU:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 426
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;-><init>()V

    .line 427
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->service:Ljava/lang/String;

    .line 428
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->characteristic:Ljava/lang/String;

    .line 429
    iput-boolean p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->enable:Z

    .line 430
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public startScan()V
    .registers 2

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->startScan(Z)V

    return-void
.end method

.method public startScan(Z)V
    .registers 3

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_bScanSelf:Z

    .line 378
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 379
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;->ICBlePScanTypeScanDevice:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    .line 381
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStartScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 364
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->_readRssiTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 367
    :cond_d
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDisconnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public stopScan()V
    .registers 3

    .line 386
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 387
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;->ICBlePScanTypeScanDevice:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel$ICBlePScanType;

    .line 388
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    .line 389
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V
    .registers 9

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 435
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const-string v2, "write data:%s,characteristic=%s,type=%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;-><init>()V

    .line 437
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->service:Ljava/lang/String;

    .line 438
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->characteristic:Ljava/lang/String;

    .line 439
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->data:[B

    .line 440
    iput-object p4, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    .line 441
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method
