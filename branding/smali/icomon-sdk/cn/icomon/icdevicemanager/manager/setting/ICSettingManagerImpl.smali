.class public Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;
.super Ljava/lang/Object;
.source "ICSettingManagerImpl.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager;
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


# static fields
.field private static final MOUDLE_NAME:Ljava/lang/String; = "SettingMgr"

.field private static ____gsMgr:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field _bInitFinish:Z

.field _bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field _callbackMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleFeedbackEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "SettingMgr"

    const-string v4, "setting result, mac=%s, code=%s"

    invoke-static {v1, v4, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Object;

    .line 135
    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->feedbackEventId:Ljava/lang/Integer;

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_callbackMaps:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

    .line 137
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;->code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_callbackMaps:Ljava/util/HashMap;

    .line 139
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_41

    .line 141
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v2, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;

    invoke-direct {v2, p0, v1, p1}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;-><init>(Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_41
    return-void
.end method

.method private handleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V
    .registers 3

    .line 117
    sget-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$3;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    goto :goto_10

    :cond_e
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_bInitFinish:Z

    :goto_10
    return-void
.end method

.method private postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    .line 152
    new-instance v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;-><init>()V

    .line 153
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 154
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    .line 155
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 156
    iget-object p3, v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;->eventId:Ljava/lang/Integer;

    aput-object p3, p1, p2

    const-string p2, "%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p2

    new-instance p3, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;

    invoke-direct {p3, p0, p1, p4, v0}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;-><init>(Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;)V

    invoke-virtual {p2, p3}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->___lock:Ljava/lang/Integer;

    .line 87
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    if-nez v1, :cond_11

    .line 89
    new-instance v1, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    .line 90
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->initMgr()V

    .line 92
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

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
.method public bindHRDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 540
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "bind hr mac=%s, nodeId=%d mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 543
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device"

    .line 544
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindHRDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public cancelSendData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 585
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "cancel send data, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeCancelSendData:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public changeStName(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 411
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "change name %s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 413
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0xff1f

    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "dstId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeStName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public changeStNo(Lcn/icomon/icdevicemanager/model/device/ICDevice;IILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 420
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "change StNo=%d dstId=%d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "st_no"

    .line 422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "dstId"

    .line 423
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public configWifi(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 344
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "config wifi ssid len = %d, password len=%d, %d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ssid"

    .line 346
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "password"

    .line 347
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "mode"

    .line 348
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleConfigWifi:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p5}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public deInit()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_callbackMaps:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    return-void
.end method

.method public deleteTareWeight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingMgr"

    const-string v3, "delete tare weight, mac=%s"

    invoke-static {v1, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleTareWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public exitNetwork(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 457
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "exit network, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeExitNet:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public initMgr()V
    .registers 2

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_callbackMaps:Ljava/util/HashMap;

    .line 103
    const-class v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;

    invoke-static {v0, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 104
    const-class v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-static {v0, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    return-void
.end method

.method public lockStSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 392
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingMgr"

    const-string v3, "lock skip , mac=%s"

    invoke-static {v1, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public lockStSkipEx(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICSkipParam;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 431
    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingMgr"

    const-string v3, "lock skip , mac=%s"

    invoke-static {v1, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "param"

    .line 434
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    .line 109
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    if-eqz v0, :cond_a

    .line 110
    check-cast p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->handleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V

    goto :goto_13

    .line 111
    :cond_a
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;

    if-eqz v0, :cond_13

    .line 112
    check-cast p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->handleFeedbackEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public pauseSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 287
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "pause skip mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipPause:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public powerOffKitchenScale(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "power off , mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScalePowerOff:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public queryStAllNode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "query node , mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeQueryNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public readUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 491
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "read user info , mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 494
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeReadUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public removeNodeIds(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 465
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "remove node ids %s , mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeIds"

    .line 467
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNodes:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public resumeSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 295
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "resume skip mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipResume:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public sendData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;JLjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 13

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 566
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "SettingMgr"

    const-string v5, "send data, type:%s, userId:%d mac=%s"

    invoke-static {v2, v5, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p5, :cond_30

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 568
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object p1, p3, v3

    const-string p1, "send data fail, obj is null, mac=%s"

    invoke-static {v2, p1, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_2f

    .line 570
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-interface {p6, p1}, Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;->onCallBack(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_2f
    return-void

    .line 575
    :cond_30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 576
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-int p2, p3

    .line 577
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "obj"

    .line 578
    invoke-virtual {v0, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSendData:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p6}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setBPM(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set bpm=%d mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 510
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "bpm_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bpm"

    .line 511
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetBPM:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setClientNodeId(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 483
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set client node id, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetClientNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setCommand(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 592
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set command, %d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cmd"

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_28

    const-string p3, ""

    :cond_28
    const-string p2, "param"

    .line 595
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeCommand:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setDeviceKey(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 559
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set device key mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleKey:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setDeviceLightSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set light setting mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    instance-of v0, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;

    if-eqz v0, :cond_94

    .line 171
    check-cast p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    if-nez v1, :cond_27

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    .line 178
    :cond_27
    iget-object v1, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 179
    iget-object v1, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    :cond_34
    iget-object v1, p2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;

    .line 181
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "g"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "b"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget v2, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->rpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "rpm"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 188
    :cond_7b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "colors"

    .line 189
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    .line 190
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->getMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipLightSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v1, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    goto :goto_9d

    .line 192
    :cond_94
    instance-of v0, p2, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;

    if-eqz v0, :cond_9d

    .line 193
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleLightSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public setHR(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 6

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hr"

    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetHR:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setHRMax(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 500
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set max hr mac=%s, hr=%d"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hr"

    .line 502
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetMaxHR:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setKitchenScaleUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 237
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set kitchen unit=%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setNickNameInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/String;IIIILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 13

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-object v3, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "SettingMgr"

    const-string v3, "set nodeId=%d, nick name=%s ,headType=%d, class=%d, grade=%d, student_no=%d,mac=%s"

    invoke-static {v1, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nickname"

    .line 445
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "headType"

    .line 446
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "nodeId"

    .line 447
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "class"

    .line 449
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "grade"

    .line 450
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "studentNo"

    .line 451
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNickName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p8}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setNutritionFacts(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    .line 244
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set nutrition facts type=%s, valud=%d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 247
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "value"

    .line 248
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleCMD:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setOtherParams(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subType"

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "param"

    .line 368
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleOtherParam:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setRootNodeId(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set root node id mode=%d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "matchMode"

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRootNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setRulerBodyPartsType(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 216
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set ruler body parts type =%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerBodyPartsType:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setRulerMeasureMode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set ruler mode=%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setRulerUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set ruler unit=%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setScaleSoundSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 551
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set scale sound mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleSoundSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setScaleUIItems(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "items"

    .line 376
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 377
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, p2, v1

    const-string v1, "SettingMgr"

    const-string v2, "set ui items mac=%s"

    invoke-static {v1, v2, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUIItem:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setScaleUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 202
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set scale unit=%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setServerUrl(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 356
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set server url=%s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "server"

    .line 358
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleServerUrl:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setSkipPlayFreq(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 525
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set play freq=%d mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "freq"

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipPlayFreq:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setSkipSoundSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 384
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set sound mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipSoundSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 312
    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set user info = %s, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setUserList(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 320
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set user list = %d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 326
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 329
    :cond_3c
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserList:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setVolume(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 517
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set volume=%d mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "volume"

    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetVolume:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public setWeight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SettingMgr"

    const-string v2, "set weight =%d, mac=%s"

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public startSkipExt(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICSkipParam;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SettingMgr"

    const-string v3, "start skip ext ,param=%s, mac=%s"

    invoke-static {v1, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext"

    .line 277
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p2

    iget-object p2, p2, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public startSkipMode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    .line 262
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "SettingMgr"

    const-string v3, "start skip mode=%s, param=%d, mac=%s"

    invoke-static {v2, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "mode"

    .line 264
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "setting"

    .line 265
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object p2, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, p2, v0, p4}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method

.method public stopSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "SettingMgr"

    const-string v3, "stop skip , mac=%s"

    invoke-static {v2, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V

    return-void
.end method
