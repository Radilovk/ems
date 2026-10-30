.class public Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;
.super Ljava/lang/Object;
.source "ICWorkerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;,
        Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;
    }
.end annotation


# static fields
.field private static ___gWorkerMgr:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field private _bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field _cacheDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field _cacheName:Ljava/lang/String;

.field _devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;",
            ">;"
        }
    .end annotation
.end field

.field _devices_userInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _isInBackground:Z

.field private _userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

.field _workers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkDeviceFlow()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 290
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, v1, :cond_7

    return-void

    .line 293
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 301
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v5

    invoke-static {v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 302
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v3

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ordinal()I

    move-result v3

    invoke-static {v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v5

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ordinal()I

    move-result v5

    if-le v3, v5, :cond_12

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    :cond_51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 315
    :cond_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 317
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z

    move-result v4

    if-nez v4, :cond_76

    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 318
    :cond_76
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 321
    :cond_7a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 326
    :cond_83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 328
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_cf

    .line 330
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v2

    if-eqz v2, :cond_b0

    .line 333
    iget-boolean v1, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    if-nez v1, :cond_87

    .line 334
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    goto :goto_87

    .line 338
    :cond_b0
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 341
    iget-boolean v1, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->bStop:Z

    if-nez v1, :cond_87

    .line 342
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    goto :goto_87

    .line 348
    :cond_c4
    invoke-static {v1, v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 349
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->searchOTADevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    goto :goto_87

    .line 351
    :cond_cf
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne v2, v3, :cond_87

    .line 352
    invoke-static {v1, v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 354
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetisFirst(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const/4 v2, 0x0

    .line 355
    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisFirst(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 356
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->searchNormalDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    goto :goto_87

    .line 358
    :cond_ec
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->searchNormalDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    goto :goto_87

    :cond_f4
    return-void
.end method

.method private getNormalWorkerNameByScanModel(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)Ljava/lang/String;
    .registers 10

    .line 485
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeHR:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, v1, :cond_d

    .line 486
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 487
    :cond_d
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v2, 0x6

    if-ne v0, v1, :cond_5a

    .line 488
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v0, v2, :cond_1f

    .line 489
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :cond_1f
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 491
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 492
    :cond_2b
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_37

    .line 493
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 494
    :cond_37
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const v1, -0x10000001

    if-ne v0, v1, :cond_45

    .line 495
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 496
    :cond_45
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const v0, -0x10000003

    if-ne p1, v0, :cond_53

    .line 497
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 500
    :cond_53
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 501
    :cond_5a
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v1, :cond_ca

    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v0, v1, :cond_ca

    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, v1, :cond_70

    goto :goto_ca

    .line 542
    :cond_70
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, v1, :cond_98

    .line 543
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v0, v3, :cond_81

    .line 544
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 545
    :cond_81
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v4, :cond_91

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne p1, v5, :cond_8a

    goto :goto_91

    .line 548
    :cond_8a
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 546
    :cond_91
    :goto_91
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 549
    :cond_98
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, v1, :cond_b2

    .line 550
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne p1, v0, :cond_ab

    .line 551
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 553
    :cond_ab
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 555
    :cond_b2
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeKitchenScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, v1, :cond_198

    .line 556
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne p1, v4, :cond_c3

    .line 557
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 559
    :cond_c3
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 504
    :cond_ca
    :goto_ca
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-ne v0, v1, :cond_107

    .line 505
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v5, :cond_100

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v7, :cond_100

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v6, :cond_100

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v0, v2, :cond_e3

    goto :goto_100

    .line 508
    :cond_e3
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne v0, v3, :cond_ee

    .line 509
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 510
    :cond_ee
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne p1, v4, :cond_f9

    .line 511
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 514
    :cond_f9
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 507
    :cond_100
    :goto_100
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 515
    :cond_107
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_198

    .line 516
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-nez v0, :cond_163

    .line 517
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v5, :cond_15c

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v7, :cond_15c

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq v0, v6, :cond_15c

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v0, v2, :cond_122

    goto :goto_15c

    .line 520
    :cond_122
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_155

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_155

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_134

    goto :goto_155

    .line 522
    :cond_134
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14e

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_14e

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_147

    goto :goto_14e

    .line 526
    :cond_147
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 523
    :cond_14e
    :goto_14e
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 521
    :cond_155
    :goto_155
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 519
    :cond_15c
    :goto_15c
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 528
    :cond_163
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne v0, v2, :cond_16e

    .line 529
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 531
    :cond_16e
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne v0, v5, :cond_179

    .line 532
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 534
    :cond_179
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    if-ne v0, v7, :cond_184

    .line 535
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 537
    :cond_184
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_191

    .line 538
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 540
    :cond_191
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_198
    const/4 p1, 0x0

    return-object p1
.end method

.method private getWorkerByIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 675
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 676
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_20

    goto :goto_24

    .line 678
    :cond_20
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_25

    :goto_24
    move-object v1, v2

    :cond_25
    if-eqz v1, :cond_7

    :cond_27
    return-object v1
.end method

.method private handleNormalWorker(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 13

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 434
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, v1, :cond_7

    return-void

    .line 437
    :cond_7
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v0

    if-nez v0, :cond_64

    .line 440
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getNormalWorkerNameByScanModel(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    const/4 v1, 0x0

    .line 444
    :try_start_18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 449
    :goto_22
    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v2, p1, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->setDeviceFlowClsScanModel(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 450
    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v6

    .line 455
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
    :try_end_37
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_37} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_37} :catch_39

    move-object v1, v0

    goto :goto_3f

    :catch_39
    move-exception v0

    goto :goto_3c

    :catch_3b
    move-exception v0

    .line 457
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_3f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices_userInfoMap:Ljava/util/HashMap;

    .line 460
    iget-object v2, v6, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    const/4 v2, 0x0

    move-object v8, v0

    const/4 v10, 0x0

    goto :goto_54

    :cond_51
    const/4 v2, 0x1

    move-object v8, v0

    const/4 v10, 0x1

    :goto_54
    if-eqz v1, :cond_64

    .line 467
    iget-object v5, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    iget-object v9, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->userInfoList:Ljava/util/List;

    move-object v4, v1

    move-object v7, p1

    invoke-virtual/range {v4 .. v10}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;I)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    return-void
.end method

.method private handleScanOTAWorker(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 15

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 366
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, v1, :cond_7

    return-void

    .line 369
    :cond_7
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 375
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    .line 376
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v3

    sget-object v4, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne v3, v4, :cond_17

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    .line 377
    invoke-direct {p0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->isEqualOTAMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 379
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->filePath:Ljava/lang/String;

    .line 381
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode1:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    if-ne v2, v3, :cond_48

    .line 382
    const-class v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    .line 383
    :cond_48
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    if-ne v2, v3, :cond_55

    .line 384
    const-class v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    .line 385
    :cond_55
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode3:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    if-ne v2, v3, :cond_62

    .line 386
    const-class v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    .line 387
    :cond_62
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAModeAuto:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    if-ne v2, v3, :cond_7b

    .line 388
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getOTAWorkerNameByScanModel(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 390
    const-class v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    :cond_7b
    const-string v2, ""

    :cond_7d
    :goto_7d
    const/4 v3, 0x0

    if-eqz v2, :cond_c7

    .line 398
    :try_start_80
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_84} :catch_85

    goto :goto_8a

    :catch_85
    move-exception v2

    .line 400
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v2, v3

    .line 402
    :goto_8a
    iget-object v4, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    sget-object v5, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v4, p1, v5}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->setDeviceFlowClsScanModel(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 403
    iget-object v4, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    sget-object v5, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v8

    .line 408
    :try_start_99
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ota_file_path"

    .line 409
    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ota_mode"

    .line 410
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 413
    iget-object v7, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    iget-object v10, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v11, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->userInfoList:Ljava/util/List;

    move-object v6, v0

    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;Ljava/util/Map;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Ljava/lang/IllegalAccessException; {:try_start_99 .. :try_end_c0} :catch_c3
    .catch Ljava/lang/InstantiationException; {:try_start_99 .. :try_end_c0} :catch_c1

    goto :goto_c7

    :catch_c1
    move-exception p1

    goto :goto_c4

    :catch_c3
    move-exception p1

    .line 416
    :goto_c4
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 424
    :cond_c7
    :goto_c7
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    .line 427
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-direct {p0, v0, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    :cond_d9
    return-void
.end method

.method private initMgr()V
    .registers 3

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices_userInfoMap:Ljava/util/HashMap;

    .line 237
    const-class v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$2;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 244
    const-class v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$3;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 251
    const-class v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$4;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$4;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 258
    const-class v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$5;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$5;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 264
    const-class v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$6;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$6;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 272
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_isInBackground:Z

    const-string v0, "ICBLEINFO"

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_cacheName:Ljava/lang/String;

    .line 275
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_cacheDevices:Ljava/util/ArrayList;

    return-void
.end method

.method private isEqualOTAMac(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, ":"

    const-string v1, ""

    .line 588
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_b7

    if-eqz p2, :cond_b7

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_b7

    .line 594
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_21

    goto/16 :goto_b7

    .line 598
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_2f
    const/4 v4, 0x6

    const/16 v5, 0x10

    if-ge v1, v4, :cond_54

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v6, v4, 0x2

    .line 605
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    rsub-int/lit8 v6, v1, 0x5

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, 0x2

    .line 606
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 607
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 608
    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v5, :cond_51

    const/4 v3, 0x0

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_54
    if-eqz v3, :cond_57

    return v2

    :cond_57
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_59
    const/4 v6, 0x5

    if-ge v1, v4, :cond_83

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v8, v7, 0x2

    .line 622
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 623
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 624
    invoke-static {v9, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 625
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v1, v6, :cond_7d

    if-eqz v3, :cond_80

    add-int/lit8 v6, v8, -0x1

    if-eq v6, v7, :cond_80

    add-int/lit8 v8, v8, 0x1

    if-eq v8, v7, :cond_80

    goto :goto_7f

    :cond_7d
    if-eq v8, v7, :cond_80

    :goto_7f
    const/4 v3, 0x0

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_83
    if-eqz v3, :cond_86

    return v2

    :cond_86
    const/4 v1, 0x0

    :goto_87
    if-ge v1, v4, :cond_b6

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v7, v3, 0x2

    .line 649
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    rsub-int/lit8 v7, v1, 0x5

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v7, 0x2

    .line 650
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 651
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 652
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v1, v6, :cond_b0

    if-eqz v2, :cond_b3

    add-int/lit8 v8, v3, -0x1

    if-eq v8, v7, :cond_b3

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v7, :cond_b3

    goto :goto_b2

    :cond_b0
    if-eq v3, v7, :cond_b3

    :goto_b2
    const/4 v2, 0x0

    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_b6
    return v2

    :cond_b7
    :goto_b7
    return v0
.end method

.method private postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V
    .registers 4

    .line 284
    invoke-static {p1, p2, p3}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method private removeWorkerByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 691
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 692
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_34

    .line 693
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->isEqualOTAMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 694
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_2c

    instance-of v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;

    if-eqz v3, :cond_2c

    goto :goto_30

    .line 696
    :cond_2c
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_31

    :goto_30
    move-object v1, v2

    :cond_31
    if-eqz v1, :cond_7

    goto :goto_50

    .line 704
    :cond_34
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 705
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_49

    instance-of v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;

    if-eqz v3, :cond_49

    goto :goto_4d

    .line 707
    :cond_49
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_4e

    :goto_4d
    move-object v1, v2

    :cond_4e
    if-eqz v1, :cond_7

    :cond_50
    :goto_50
    if-eqz v1, :cond_57

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 718
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_57
    return-void
.end method

.method private searchNormalDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 4

    .line 576
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;-><init>()V

    .line 577
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;->macAddr:Ljava/lang/String;

    .line 578
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___lock:Ljava/lang/Integer;

    .line 194
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___gWorkerMgr:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    if-nez v1, :cond_11

    .line 196
    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___gWorkerMgr:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    .line 197
    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->initMgr()V

    .line 199
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___gWorkerMgr:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    return-object v0

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
    .registers 6

    .line 835
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;-><init>()V

    .line 836
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    .line 837
    new-instance p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    invoke-direct {p1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    .line 838
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputtype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 839
    invoke-static {p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    .line 840
    iput-object p3, p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->filePath:Ljava/lang/String;

    .line 841
    iput-object p4, p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 842
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1017
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_2c

    .line 1018
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->isExistDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1019
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;->ICAddDeviceCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    invoke-virtual {p0, v0, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postAddDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V

    .line 1020
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    const-string v2, ""

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAModeAuto:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V

    goto :goto_7

    .line 1022
    :cond_2c
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;->ICAddDeviceCallBackCodeFailedAndExist:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    invoke-virtual {p0, v0, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postAddDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V

    goto :goto_7

    .line 1026
    :cond_32
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    return-void
.end method

.method addOTADevices(Ljava/util/List;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1118
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_7

    .line 1119
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->isExistDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1120
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V

    goto :goto_7

    .line 1124
    :cond_23
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    return-void
.end method

.method public deInit()V
    .registers 7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ICWorkerManager"

    const-string v2, "deinit!"

    .line 206
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 210
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v4

    sget-object v5, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne v4, v5, :cond_36

    .line 211
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 212
    :cond_36
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v4

    sget-object v5, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne v4, v5, :cond_1a

    .line 213
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 216
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 217
    new-instance v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$1;

    invoke-direct {v2, p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V

    invoke-virtual {p0, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    .line 224
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 225
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeOTADevices(Ljava/util/List;)V

    :cond_5d
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->___gWorkerMgr:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    return-void
.end method

.method public getDeviceByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/model/device/ICDevice;
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 760
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 761
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v2, :cond_2f

    .line 762
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->isEqualOTAMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    if-ne p2, v2, :cond_6

    .line 763
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object p1

    return-object p1

    .line 766
    :cond_2f
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    if-ne p2, v2, :cond_6

    .line 767
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object p1

    return-object p1

    :cond_48
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceFlowCICyMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 796
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    if-ne p2, v2, :cond_6

    return-object v1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 786
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 787
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    if-ne p2, v2, :cond_6

    return-object v1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceFlowClsListByIdentifier(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 823
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 824
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    move-result-object v3

    iget-object v3, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    if-nez v3, :cond_26

    goto :goto_b

    .line 827
    :cond_26
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    move-result-object v3

    iget-object v3, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 828
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_36
    return-object v0
.end method

.method public getOTAWorkerNameByScanModel(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)Ljava/lang/String;
    .registers 3

    .line 477
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->otaType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 478
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 480
    :cond_c
    const-class p1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
    .registers 7

    .line 745
    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    :cond_8
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 750
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 751
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_2b
    return-object v0
.end method

.method public isExistDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Z
    .registers 3

    .line 805
    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isExistDeviceByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Z
    .registers 3

    .line 813
    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method onHandleBLEUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V
    .registers 7

    .line 953
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_70

    .line 984
    :cond_14
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    .line 985
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->handleScanOTAWorker(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    goto :goto_70

    .line 978
    :cond_1c
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    .line 980
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->identifier:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->onScanDevice(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    goto :goto_70

    .line 955
    :cond_26
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;

    .line 956
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 957
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-ne p1, v0, :cond_36

    .line 960
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    goto :goto_70

    .line 962
    :cond_36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 963
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 964
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_59

    .line 965
    invoke-static {v1, v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 967
    :cond_59
    invoke-static {v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    move-result-object v2

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne v2, v3, :cond_41

    .line 968
    invoke-static {v1, v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    goto :goto_41

    .line 971
    :cond_65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_70

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_70
    :goto_70
    return-void
.end method

.method public onHandleGlobalPublishEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V
    .registers 4

    .line 892
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_4f

    .line 909
    :cond_17
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->userInfoList:Ljava/util/List;

    if-eqz p1, :cond_4f

    .line 913
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->userInfoList:Ljava/util/List;

    .line 914
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 904
    :cond_3e
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 905
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    goto :goto_4f

    :cond_49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_isInBackground:Z

    goto :goto_4f

    :cond_4d
    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_isInBackground:Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onHandleSettingPublishEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;)V
    .registers 5

    .line 870
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices_userInfoMap:Ljava/util/HashMap;

    .line 871
    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 875
    :cond_14
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v0

    if-nez v0, :cond_32

    .line 879
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeDeviceNotFound:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 881
    new-instance v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;-><init>()V

    .line 882
    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->feedbackEventId:Ljava/lang/Integer;

    .line 883
    iput-object v0, v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 884
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 885
    invoke-static {v1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :cond_32
    return-void
.end method

.method public onHandleWorkerPublishEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;)V
    .registers 4

    .line 926
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_46

    .line 943
    :cond_17
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    .line 944
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeOTADevices(Ljava/util/List;)V

    goto :goto_46

    .line 938
    :cond_21
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    .line 939
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->filepath:Ljava/lang/String;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    invoke-virtual {p0, v0, v1, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->addOTADevices(Ljava/util/List;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V

    goto :goto_46

    .line 933
    :cond_2f
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    .line 934
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    goto :goto_46

    .line 928
    :cond_3b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    .line 929
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->addDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V

    :goto_46
    return-void
.end method

.method public onHandleWorkerUploadEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V
    .registers 7

    .line 1063
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 1064
    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    .line 1065
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWUploadEvent$ICWUploadEventType:[I

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    goto :goto_80

    .line 1096
    :cond_16
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeUnknown:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    .line 1097
    instance-of v2, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;

    if-eqz v2, :cond_1f

    .line 1098
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    goto :goto_25

    .line 1099
    :cond_1f
    instance-of v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    if-eqz v1, :cond_25

    .line 1100
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    .line 1102
    :cond_25
    :goto_25
    invoke-virtual {p0, v0, p1, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->setIsStart(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Z)V

    .line 1103
    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 1104
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    goto :goto_80

    .line 1067
    :cond_2f
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeUnknown:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    .line 1068
    instance-of v2, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    if-eqz v2, :cond_65

    .line 1069
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    .line 1070
    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object v2

    .line 1074
    instance-of v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;

    if-eqz v1, :cond_45

    .line 1075
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    .line 1076
    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    goto :goto_65

    .line 1078
    :cond_45
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1079
    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 1081
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 1082
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    move-result-object v1

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;->ICRemoveDeviceCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    invoke-virtual {p0, v0, v1, v4}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postRemoveDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;)V

    const/4 v1, 0x0

    .line 1083
    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    goto :goto_65

    .line 1086
    :cond_62
    invoke-virtual {p0, v0, p1, v3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->setIsStart(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Z)V

    .line 1089
    :cond_65
    :goto_65
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "worker over "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 1092
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    :goto_80
    return-void
.end method

.method public onScanDevice(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 5

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 861
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    .line 862
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 863
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->handleNormalWorker(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    goto :goto_6

    :cond_26
    return-void
.end method

.method public postAddDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V
    .registers 5

    .line 995
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;-><init>()V

    .line 996
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    .line 997
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 998
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    .line 999
    sget-object p2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDeviceOperate:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, v0, p3}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    move-result-object p1

    .line 1000
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public postRemoveDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;)V
    .registers 5

    .line 1004
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;-><init>()V

    .line 1005
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    .line 1006
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 1007
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->removeCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    .line 1008
    sget-object p2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDeviceOperate:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, v0, p3}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    move-result-object p1

    .line 1009
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 3

    .line 846
    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_devices:Ljava/util/ArrayList;

    .line 848
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;",
            ")V"
        }
    .end annotation

    .line 1031
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 1032
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v1

    .line 1033
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 1034
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v4

    goto :goto_25

    :cond_24
    move-object v4, v3

    :goto_25
    if-eqz v4, :cond_4f

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    .line 1039
    invoke-static {v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 1040
    invoke-static {v2, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    .line 1042
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    goto :goto_4

    .line 1045
    :cond_34
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v4, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 1047
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;-><init>()V

    .line 1048
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;->macAddr:Ljava/lang/String;

    .line 1050
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-direct {p0, v2, v3, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    .line 1051
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;->ICRemoveDeviceCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    invoke-virtual {p0, v0, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postRemoveDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;)V

    goto :goto_4

    .line 1055
    :cond_4f
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;->ICRemoveDeviceCallBackCodeFailedAndNotExist:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    invoke-virtual {p0, v0, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postRemoveDeviceOperate(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;)V

    goto :goto_4

    .line 1058
    :cond_55
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    return-void
.end method

.method removeOTADevices(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;)V"
        }
    .end annotation

    .line 1131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 1132
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-result-object v1

    .line 1133
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeOTA:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 1134
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;

    move-result-object v4

    goto :goto_25

    :cond_24
    move-object v4, v3

    :goto_25
    if-eqz v4, :cond_4

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    .line 1139
    invoke-static {v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    .line 1141
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    goto :goto_4

    .line 1147
    :cond_31
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    invoke-virtual {p0, v4, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    .line 1150
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;-><init>()V

    .line 1151
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;->macAddr:Ljava/lang/String;

    .line 1152
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-direct {p0, v0, v3, v1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    goto :goto_4

    .line 1159
    :cond_47
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->checkDeviceFlow()V

    return-void
.end method

.method public removeWorkerByDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 3

    .line 723
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->removeWorkerByMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V

    return-void
.end method

.method public removeWorkerByIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 730
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->identifier:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 731
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeNormal:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    if-ne p2, v3, :cond_20

    move-object v1, v2

    :cond_20
    if-eqz v1, :cond_7

    :cond_22
    if-eqz v1, :cond_29

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->_workers:Ljava/util/ArrayList;

    .line 740
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method public searchOTADevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 4

    .line 567
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    .line 571
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStartScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public setDeviceFlowClsScanModel(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 4

    .line 777
    invoke-virtual {p0, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCICyMacAddr(Ljava/lang/String;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 781
    :cond_7
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V

    return-void
.end method

.method public setIsStart(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;Z)V
    .registers 4

    .line 853
    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->getDeviceFlowCls(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 855
    invoke-static {p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->-$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V

    :cond_9
    return-void
.end method
