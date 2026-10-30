.class public Lcn/icomon/icdevicemanager/ICDeviceManager;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"


# static fields
.field public static final REQUEST_ACCESS_COARSE_LOCATION:I = 0x1

.field private static ____gsMgr:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field private final MOUDLE_NAME:Ljava/lang/String;

.field private _isCallInit:Z

.field private bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field private connectedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

.field private isInitFinish:Z

.field private isSupportBLE:Z

.field private scanDelegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

.field private userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

.field private userInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbleState(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectedList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDelegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfoList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_isCallInit(Lcn/icomon/icdevicemanager/ICDeviceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->_isCallInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDelegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    return-void
.end method

.method static bridge synthetic -$$Nest$m__Init__(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->__Init__(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monHandleBleUploadEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->onHandleBleUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monHandleWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->onHandleWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostBleEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostGlobalEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunInMainThread(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfput____gsMgr(Lcn/icomon/icdevicemanager/ICDeviceManager;)V
    .registers 1

    sput-object p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->____gsMgr:Lcn/icomon/icdevicemanager/ICDeviceManager;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ICDMGR"

    iput-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->MOUDLE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isSupportBLE:Z

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfoList:Ljava/util/List;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    .line 121
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOff:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->_isCallInit:Z

    return-void
.end method

.method private __Init__(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 6

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->_isCallInit:Z

    const-string v1, "ICDMGR"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p1, "repeat init sdk"

    new-array v0, v2, [Ljava/lang/Object;

    .line 186
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    if-eqz v0, :cond_1b

    const-string p1, "SDK already Init Finish!"

    new-array v0, v2, [Ljava/lang/Object;

    .line 190
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->_isCallInit:Z

    .line 194
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->initCenter()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    .line 196
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->handleConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    .line 197
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->Init(Landroid/content/Context;)V

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SDK Version:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->isSupportBLE(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isSupportBLE:Z

    if-nez p1, :cond_66

    const-string p1, "don\'t support ble"

    new-array v2, v2, [Ljava/lang/Object;

    .line 205
    invoke-static {v1, p1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$1;

    invoke-direct {v1, p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$1;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V

    invoke-virtual {p1, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_d6

    .line 228
    :cond_66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 230
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0000C0FF-0000-1000-8000-00805F9B34FB"

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0000180D-0000-1000-8000-00805F9B34FB"

    .line 232
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->setServices(Ljava/util/List;)V

    .line 234
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    if-nez p1, :cond_98

    .line 236
    new-instance p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 240
    :cond_98
    const-class p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$2;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/ICDeviceManager$2;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V

    invoke-static {p1, v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 247
    const-class p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$3;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/ICDeviceManager$3;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V

    invoke-static {p1, v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 254
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->initAppNotify()V

    .line 256
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    .line 258
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->initCenter()V

    .line 259
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->shared()Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    .line 260
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->shared()Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    .line 261
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->shared()Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 263
    sget-object p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    .line 264
    sget-object p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    const-string p1, "SDK Init Finish!"

    new-array v0, v2, [Ljava/lang/Object;

    .line 265
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d6
    return-void
.end method

.method private callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 912
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_9
    return-void
.end method

.method private handleConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 4

    .line 162
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    .line 163
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->setContext(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->is_fill_adc:Z

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->is_fill_adc:Z

    .line 165
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->rssiRefreshSpeed:I

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    .line 166
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->textFontSize:I

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textFontSize:I

    .line 167
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->textImageHeight:I

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textImageHeight:I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "textFontSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->textFontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICDMGR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->getMIDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;

    .line 173
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->addMIDevice(Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;)V

    goto :goto_4e

    :cond_62
    return-void
.end method

.method private initAppNotify()V
    .registers 1

    return-void
.end method

.method private onHandleBleUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    .line 949
    sget-object v1, Lcn/icomon/icdevicemanager/ICDeviceManager$57;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14d

    const/4 v0, 0x2

    if-eq v1, v0, :cond_14

    goto/16 :goto_197

    .line 988
    :cond_14
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    if-eqz p1, :cond_197

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDelegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    if-eqz v1, :cond_197

    .line 991
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;-><init>()V

    .line 992
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setName(Ljava/lang/String;)V

    .line 993
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->rssi:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setRssi(Ljava/lang/Integer;)V

    .line 994
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setMacAddr(Ljava/lang/String;)V

    .line 995
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->services:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setServices(Ljava/util/List;)V

    .line 996
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;)V

    .line 997
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setCommunicationType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;)V

    .line 998
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    .line 999
    iget v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setDeviceFlag(Ljava/lang/Integer;)V

    .line 1000
    iget v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->st_no:I

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSt_no(I)V

    .line 1001
    iget v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setNodeId(I)V

    .line 1002
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFuns:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setDeviceFunctions(Ljava/util/List;)V

    .line 1003
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v4, :cond_70

    .line 1004
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13e

    .line 1005
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeHeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto/16 :goto_13e

    .line 1008
    :cond_70
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v3, v4, :cond_c2

    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v3, v4, :cond_c2

    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v4, :cond_83

    goto :goto_c2

    .line 1047
    :cond_83
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v4, :cond_13e

    .line 1048
    iget v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v3, v2, :cond_92

    .line 1049
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeLightEffect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    .line 1051
    :cond_92
    iget v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    if-ne v2, v0, :cond_9d

    .line 1052
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeLightAndSound:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto/16 :goto_13e

    .line 1054
    :cond_9d
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_a8

    .line 1055
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeBaseSt:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    goto/16 :goto_13e

    .line 1057
    :cond_a8
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const v2, -0x10000001

    if-ne v0, v2, :cond_b5

    .line 1058
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeRopeS2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    goto/16 :goto_13e

    .line 1060
    :cond_b5
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const v0, -0x10000003

    if-ne p1, v0, :cond_13e

    .line 1061
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeBaseSt:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    goto/16 :goto_13e

    .line 1011
    :cond_c2
    :goto_c2
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_139

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_ce

    goto/16 :goto_139

    .line 1015
    :cond_ce
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_f4

    .line 1016
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, v0}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    .line 1017
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->pole:I

    if-ne v0, v3, :cond_e7

    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->freqCount:I

    if-le v0, v2, :cond_e7

    .line 1018
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeEightElectrode2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto :goto_13e

    .line 1020
    :cond_e7
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->pole:I

    if-ne v0, v3, :cond_13e

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->freqCount:I

    if-ne p1, v2, :cond_13e

    .line 1021
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeEightElectrode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    goto :goto_13e

    .line 1024
    :cond_f4
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_100

    .line 1025
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeScaleDual:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto :goto_13e

    .line 1027
    :cond_100
    iget v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_12d

    .line 1028
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFuns:Ljava/util/List;

    if-eqz v0, :cond_119

    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFuns:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_113

    goto :goto_119

    .line 1034
    :cond_113
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto :goto_13e

    .line 1029
    :cond_119
    :goto_119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFunctions:Ljava/util/List;

    .line 1030
    iget-object p1, v1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFunctions:Ljava/util/List;

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionWiFi:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeColor:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto :goto_13e

    .line 1043
    :cond_12d
    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_13e

    .line 1044
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeNewScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    goto :goto_13e

    .line 1013
    :cond_139
    :goto_139
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;->ICDeviceSubTypeEightElectrode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, p1}, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V

    :cond_13e
    :goto_13e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDelegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    .line 1068
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$22;

    invoke-direct {v2, p0, p1, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager$22;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;)V

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_197

    .line 953
    :cond_14d
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 955
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v1, v3, :cond_197

    .line 956
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 958
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq p1, v1, :cond_164

    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 959
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_164
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    const/4 v1, 0x0

    const-string v3, "ICDMGR"

    if-nez p1, :cond_180

    const-string p1, "callback sdk init state=1"

    new-array v4, v1, [Ljava/lang/Object;

    .line 962
    invoke-static {v3, p1, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isInitFinish:Z

    .line 964
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v4, Lcn/icomon/icdevicemanager/ICDeviceManager$20;

    invoke-direct {v4, p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$20;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V

    invoke-virtual {p1, v4}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_180
    new-array p1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    aput-object v2, p1, v1

    const-string v1, "callback ble state=%s"

    .line 973
    invoke-static {v3, v1, p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$21;

    invoke-direct {v1, p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$21;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V

    invoke-virtual {p1, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_197
    :goto_197
    return-void
.end method

.method private onHandleWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V
    .registers 15

    .line 1087
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    .line 1090
    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager$57;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWUploadEvent$ICWUploadEventType:[I

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x2

    const-string v6, "ICDMGR"

    const-string v7, "nodeId"

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_5e0

    goto/16 :goto_5de

    .line 1578
    :pswitch_1d
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 1579
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5de

    .line 1580
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;

    invoke-direct {v0, p0, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$56;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1549
    :pswitch_3b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    .line 1551
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    if-eqz v0, :cond_5e

    new-array v0, v5, [Ljava/lang/Object;

    .line 1553
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    aput-object v1, v0, v8

    const-string v1, "add device result, mac=%s, state=%s"

    invoke-static {v6, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;

    invoke-direct {v0, p0, p1, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager$54;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1563
    :cond_5e
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    if-eqz v0, :cond_5de

    new-array v0, v5, [Ljava/lang/Object;

    .line 1565
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->removeCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    aput-object v1, v0, v8

    const-string v1, "remove device result, mac=%s, state=%s"

    invoke-static {v6, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$55;

    invoke-direct {v0, p0, p1, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager$55;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1256
    :pswitch_7d
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    if-nez v0, :cond_83

    goto/16 :goto_5de

    .line 1259
    :cond_83
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v0, :cond_e9

    .line 1260
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1261
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v0, :cond_df

    .line 1262
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    if-eqz v0, :cond_9d

    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_df

    .line 1263
    :cond_9d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    .line 1264
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v5, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    iget v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    if-ne v0, v4, :cond_df

    .line 1266
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_df
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$32;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$32;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1281
    :cond_e9
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-eqz v0, :cond_f9

    .line 1282
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$33;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$33;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1289
    :cond_f9
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;

    if-eqz v0, :cond_109

    .line 1290
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$34;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$34;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1297
    :cond_109
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    if-eqz v0, :cond_119

    .line 1298
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$35;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$35;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1305
    :cond_119
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v0, :cond_129

    .line 1306
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$36;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$36;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1314
    :cond_129
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_145

    .line 1315
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1316
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->value(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object p1

    .line 1317
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$37;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$37;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1324
    :cond_145
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_394

    .line 1326
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v0, "type"

    .line 1327
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 1328
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "unit"

    if-ne v0, v8, :cond_17c

    .line 1329
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1330
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object p1

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1331
    iput-object p1, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1332
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$38;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1339
    :cond_17c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_196

    .line 1340
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1341
    iput-object p1, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 1342
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$39;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$39;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1349
    :cond_196
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1b2

    const-string v0, "mode"

    .line 1350
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1351
    iput-object p1, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 1352
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$40;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$40;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1359
    :cond_1b2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    const-string v10, "battery"

    if-eq v0, v6, :cond_380

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x7

    if-ne v0, v11, :cond_1c4

    goto/16 :goto_380

    .line 1368
    :cond_1c4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x5

    if-ne v0, v11, :cond_1ec

    const-string v0, "status"

    .line 1369
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v0, "percent"

    .line 1370
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1371
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$42;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/icomon/icdevicemanager/ICDeviceManager$42;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;I)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1378
    :cond_1ec
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v12, 0xa

    if-ne v0, v12, :cond_22a

    const-string v0, "state"

    .line 1379
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1380
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    if-eqz p1, :cond_21e

    if-eq p1, v8, :cond_21b

    if-eq p1, v5, :cond_218

    if-eq p1, v1, :cond_215

    if-eq p1, v6, :cond_212

    if-eq p1, v11, :cond_20f

    goto :goto_220

    .line 1398
    :cond_20f
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStatePasswordFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    goto :goto_220

    .line 1395
    :cond_212
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateServerConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    goto :goto_220

    .line 1392
    :cond_215
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateWifiConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    goto :goto_220

    .line 1389
    :cond_218
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateServerConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    goto :goto_220

    .line 1386
    :cond_21b
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateWifiConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    goto :goto_220

    .line 1383
    :cond_21e
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1402
    :goto_220
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$43;

    invoke-direct {p1, p0, v2, v3, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$43;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1409
    :cond_22a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_246

    .line 1410
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1411
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$44;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$44;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1418
    :cond_246
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff1f

    if-ne v0, v1, :cond_278

    .line 1419
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1422
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 1423
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p1

    goto :goto_26c

    :cond_26b
    const/4 v5, 0x0

    .line 1426
    :goto_26c
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$45;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/icomon/icdevicemanager/ICDeviceManager$45;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;II)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1433
    :cond_278
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff2f

    if-ne v0, v1, :cond_2aa

    .line 1434
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1436
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 1437
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p1

    goto :goto_29e

    :cond_29d
    const/4 v5, 0x0

    .line 1441
    :goto_29e
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$46;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/icomon/icdevicemanager/ICDeviceManager$46;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;II)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1448
    :cond_2aa
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x180d

    if-ne v0, v1, :cond_2c8

    const-string v0, "hr"

    .line 1449
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1450
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$47;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1457
    :cond_2c8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_2e2

    const-string v0, "data"

    .line 1458
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1459
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$48;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/icomon/icdevicemanager/ICDeviceManager$48;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Integer;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1466
    :cond_2e2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xf9

    if-ne v0, v1, :cond_34e

    const-string v0, "headType"

    .line 1467
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "nickName"

    .line 1468
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1469
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "class"

    .line 1470
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "grade"

    .line 1471
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "student_no"

    .line 1472
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v7, 0xffff

    if-ne v4, v7, :cond_332

    goto :goto_333

    :cond_332
    move v8, v4

    .line 1477
    :goto_333
    new-instance v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    .line 1478
    iput v0, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    .line 1479
    iput-object v1, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    .line 1480
    iput v8, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    .line 1481
    iput v5, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    .line 1482
    iput v6, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    .line 1483
    iput p1, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    .line 1484
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$49;

    invoke-direct {p1, p0, v2, v3, v4}, Lcn/icomon/icdevicemanager/ICDeviceManager$49;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1491
    :cond_34e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_368

    const-string v0, "users"

    .line 1492
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1493
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$50;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$50;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1501
    :cond_368
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xdf

    if-ne v0, v1, :cond_5de

    const-string v0, "lightSettingData"

    .line 1503
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1504
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$51;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$51;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1360
    :cond_380
    :goto_380
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1361
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$41;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$41;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1513
    :cond_394
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v0, :cond_3a8

    .line 1514
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 1516
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$52;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$52;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1523
    :cond_3a8
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    if-eqz v0, :cond_5de

    .line 1524
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    .line 1525
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    if-eqz v0, :cond_3be

    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_400

    .line 1526
    :cond_3be
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 1527
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v5, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    iget v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    if-ne v0, v4, :cond_400

    .line 1529
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    :cond_400
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$53;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$53;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1211
    :pswitch_40a
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    if-nez v0, :cond_410

    goto/16 :goto_5de

    .line 1214
    :cond_410
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    if-eqz v0, :cond_470

    .line 1215
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    .line 1216
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    if-eqz v1, :cond_426

    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_468

    .line 1217
    :cond_426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 1218
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v5, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    iget v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    if-ne v1, v4, :cond_468

    .line 1220
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_468
    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$29;

    invoke-direct {v1, p0, v2, v3, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$29;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;)V

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 1234
    :cond_470
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-eqz v0, :cond_480

    .line 1235
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$30;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$30;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1242
    :cond_480
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    instance-of v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v0, :cond_5de

    .line 1243
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$31;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$31;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1173
    :pswitch_490
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    if-nez v0, :cond_496

    goto/16 :goto_5de

    .line 1176
    :cond_496
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;

    .line 1177
    iget-object v5, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->step:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1178
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->model:Ljava/lang/Object;

    .line 1180
    instance-of v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v0, :cond_4ff

    .line 1181
    move-object v0, p1

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1182
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v1, :cond_4ff

    .line 1183
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    if-eq v5, v1, :cond_4b1

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    if-ne v5, v1, :cond_4ff

    .line 1185
    :cond_4b1
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    if-eqz v1, :cond_4bd

    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4ff

    .line 1186
    :cond_4bd
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    .line 1187
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    iget v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    if-ne v1, v4, :cond_4ff

    .line 1189
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_4ff
    new-instance v6, Lcn/icomon/icdevicemanager/ICDeviceManager$28;

    move-object v0, v6

    move-object v1, p0

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/icomon/icdevicemanager/ICDeviceManager$28;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1145
    :pswitch_50d
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    if-eqz v0, :cond_529

    .line 1146
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 1147
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1149
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$26;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    :cond_529
    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 1157
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5de

    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 1158
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-array p1, v8, [Ljava/lang/Object;

    .line 1159
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v9

    const-string v0, "callback %s disconnected"

    invoke-static {v6, v0, p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$27;

    invoke-direct {p1, p0, v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager$27;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto/16 :goto_5de

    .line 1116
    :pswitch_555
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    if-eqz v0, :cond_570

    .line 1117
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 1118
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1120
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$24;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$24;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_5de

    :cond_570
    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 1128
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5de

    new-array p1, v8, [Ljava/lang/Object;

    .line 1129
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v9

    const-string v0, "callback %s connected"

    invoke-static {v6, v0, p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->connectedList:Ljava/util/HashSet;

    .line 1131
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$25;

    invoke-direct {p1, p0, v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager$25;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_5de

    .line 1094
    :pswitch_59b
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 1095
    iget-object v4, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    if-eqz v4, :cond_5d6

    iget-object v4, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_5d6

    .line 1097
    iget-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1098
    aget-byte v4, v1, v9

    const/16 v5, 0x41

    if-lt v4, v5, :cond_5d6

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_5d6

    aget-byte v5, v1, v8

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5d6

    .line 1099
    array-length v5, v1

    add-int/2addr v5, v8

    new-array v5, v5, [B

    .line 1100
    aput-byte v4, v5, v9

    const/16 v4, 0x31

    .line 1101
    aput-byte v4, v1, v9

    .line 1102
    array-length v4, v1

    invoke-static {v1, v9, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    .line 1106
    :cond_5d6
    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$23;

    invoke-direct {v0, p0, v2, v3, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$23;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->callDelegateInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_5de
    :goto_5de
    return-void

    nop

    :pswitch_data_5e0
    .packed-switch 0x1
        :pswitch_59b
        :pswitch_555
        :pswitch_50d
        :pswitch_490
        :pswitch_40a
        :pswitch_7d
        :pswitch_3b
        :pswitch_1d
    .end packed-switch
.end method

.method private postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V
    .registers 4

    const/4 v0, 0x0

    .line 931
    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    move-result-object p1

    .line 932
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method private postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V
    .registers 3

    .line 924
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->create(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    move-result-object p1

    .line 925
    iput-object p2, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    .line 926
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method private postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V
    .registers 4

    .line 918
    invoke-static {p1, p2, p3}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->create(Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;

    move-result-object p1

    .line 919
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method private runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 3

    .line 905
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/ICDeviceManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 143
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/ICDeviceManager;->____gsMgr:Lcn/icomon/icdevicemanager/ICDeviceManager;

    if-nez v1, :cond_e

    .line 145
    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/ICDeviceManager;->____gsMgr:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 147
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->____gsMgr:Lcn/icomon/icdevicemanager/ICDeviceManager;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
    .registers 7

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 541
    monitor-enter v0

    .line 542
    :try_start_3
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, ""

    :cond_b
    const-string v2, ":"

    const-string v3, ""

    .line 546
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2f

    const-string v1, "ICDMGR"

    const-string v2, "add device failed, no mac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 548
    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$10;

    invoke-direct {v1, p0, p2, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$10;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 557
    monitor-exit v0

    return-void

    .line 560
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p0, v1, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->addDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V

    .line 563
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public addDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
    .registers 10
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

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 570
    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_66

    .line 571
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_66

    .line 584
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 587
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    const-string v4, ""

    :cond_2a
    const-string v5, ":"

    const-string v6, ""

    .line 591
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4c

    const-string v3, "ICDMGR"

    const-string v4, "add device failed, no mac"

    new-array v5, v1, [Ljava/lang/Object;

    .line 595
    invoke-static {v3, v4, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v3, Lcn/icomon/icdevicemanager/ICDeviceManager$12;

    invoke-direct {v3, p0, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager$12;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V

    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_16

    .line 607
    :cond_4c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 611
    :cond_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_58

    .line 613
    monitor-exit v0

    return-void

    .line 616
    :cond_58
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$13;

    invoke-direct {v1, p0, v2, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager$13;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V

    invoke-virtual {p1, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 644
    monitor-exit v0

    return-void

    :cond_66
    :goto_66
    const-string p1, "ICDMGR"

    const-string v2, "add device failed, no device"

    new-array v1, v1, [Ljava/lang/Object;

    .line 572
    invoke-static {p1, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$11;

    invoke-direct {p1, p0, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager$11;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 581
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p1

    .line 644
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_79

    throw p1
.end method

.method public copyLog(Ljava/lang/String;)Z
    .registers 3

    .line 1600
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->getLogPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1601
    invoke-static {p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public deInit()V
    .registers 3

    .line 324
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$5;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/ICDeviceManager$5;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public getBodyFatAlgorithmsManager()Lcn/icomon/icdevicemanager/ICBodyFatAlgorithmsManager;
    .registers 2

    .line 883
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->shared()Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    return-object v0
.end method

.method public getLogPath()Ljava/lang/String;
    .registers 2

    .line 1614
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->getLogPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;
    .registers 2

    .line 366
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    return-object v0
.end method

.method public getSettingManager()Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager;
    .registers 2

    .line 874
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->shared()Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public initMgrWithConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 311
    monitor-enter v0

    .line 312
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$4;

    invoke-direct {v2, p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$4;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 318
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public isBLEEnable()Z
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 468
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSupportBLE(Landroid/content/Context;)Z
    .registers 3

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->isSupportBLE:Z

    return p1
.end method

.method synthetic lambda$updateConfig$0$cn-icomon-icdevicemanager-ICDeviceManager(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 2

    .line 179
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->handleConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    return-void
.end method

.method synthetic lambda$updateUserInfo$1$cn-icomon-icdevicemanager-ICDeviceManager(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 5

    .line 378
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update user info : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ICDMGR"

    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_20
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 382
    sget-object p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
    .registers 7

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 651
    monitor-enter v0

    .line 652
    :try_start_3
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, ""

    :cond_b
    const-string v2, ":"

    const-string v3, ""

    .line 656
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2f

    const-string v1, "ICDMGR"

    const-string v2, "remove device failed, no mac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 659
    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    new-instance v1, Lcn/icomon/icdevicemanager/ICDeviceManager$14;

    invoke-direct {v1, p0, p2, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$14;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 668
    monitor-exit v0

    return-void

    .line 670
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {p0, v1, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    .line 674
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
    .registers 11
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

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 681
    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_66

    .line 682
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_66

    .line 695
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 696
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 698
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2a

    const-string v5, ""

    :cond_2a
    const-string v6, ":"

    const-string v7, ""

    .line 702
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 704
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4c

    const-string v4, "ICDMGR"

    const-string v5, "remove device failed, no mac"

    new-array v6, v1, [Ljava/lang/Object;

    .line 706
    invoke-static {v4, v5, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    new-instance v4, Lcn/icomon/icdevicemanager/ICDeviceManager$16;

    invoke-direct {v4, p0, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager$16;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    invoke-direct {p0, v4}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_16

    .line 718
    :cond_4c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 722
    :cond_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_58

    .line 724
    monitor-exit v0

    return-void

    .line 727
    :cond_58
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v3, Lcn/icomon/icdevicemanager/ICDeviceManager$17;

    invoke-direct {v3, p0, v2, p2, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$17;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 758
    monitor-exit v0

    return-void

    :cond_66
    :goto_66
    const-string p1, "ICDMGR"

    const-string v2, "add device failed, no devices"

    new-array v1, v1, [Ljava/lang/Object;

    .line 683
    invoke-static {p1, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    new-instance p1, Lcn/icomon/icdevicemanager/ICDeviceManager$15;

    invoke-direct {p1, p0, p2}, Lcn/icomon/icdevicemanager/ICDeviceManager$15;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->runInMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 692
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p1

    .line 758
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_79

    throw p1
.end method

.method public scanDevice(Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 488
    monitor-enter v0

    .line 489
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$8;

    invoke-direct {v2, p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$8;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 509
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public setDelegate(Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager;->delegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    return-void
.end method

.method public setSDKMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 349
    monitor-enter v0

    .line 351
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$6;

    invoke-direct {v2, p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$6;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 362
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public setUserList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 394
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 397
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    sget-object p1, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 400
    monitor-enter p1

    .line 401
    :try_start_29
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$7;

    invoke-direct {v2, p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager$7;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 451
    monitor-exit p1

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public stopScan()V
    .registers 4

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 516
    monitor-enter v0

    .line 517
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$9;

    invoke-direct {v2, p0}, Lcn/icomon/icdevicemanager/ICDeviceManager$9;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 534
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopUpgradeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 3

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->stopUpgradeDevices(Ljava/util/List;)V

    return-void
.end method

.method public stopUpgradeDevices(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ICDMGR"

    if-eqz p1, :cond_52

    .line 826
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_52

    .line 831
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 833
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v3, :cond_36

    .line 835
    iget-object v4, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_32

    goto :goto_36

    .line 841
    :cond_32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_36
    :goto_36
    const-string v3, "stop upgrade device failed, no mac"

    new-array v4, v0, [Ljava/lang/Object;

    .line 837
    invoke-static {v1, v3, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 845
    :cond_3e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_45

    return-void

    .line 850
    :cond_45
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$19;

    invoke-direct {v0, p0, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager$19;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    :cond_52
    :goto_52
    const-string p1, "stop upgrade device failed, no device"

    new-array v0, v0, [Ljava/lang/Object;

    .line 828
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 178
    monitor-enter v0

    .line 179
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public updateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/ICDeviceManager;->___lock:Ljava/lang/Integer;

    .line 376
    monitor-enter v0

    .line 377
    :try_start_3
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    .line 384
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public upgradeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
    .registers 5

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 764
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-virtual {p0, v0, p2, p3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->upgradeDevices(Ljava/util/List;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V

    return-void
.end method

.method public upgradeDevices(Ljava/util/List;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
    .registers 10
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

    const/4 v0, 0x0

    const-string v1, "ICDMGR"

    if-eqz p1, :cond_52

    .line 770
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_52

    .line 775
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v3, :cond_36

    .line 779
    iget-object v4, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_32

    goto :goto_36

    .line 785
    :cond_32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_36
    :goto_36
    const-string v3, "upgrade device failed, no mac"

    new-array v4, v0, [Ljava/lang/Object;

    .line 781
    invoke-static {v1, v3, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 789
    :cond_3e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_45

    return-void

    .line 795
    :cond_45
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p1

    new-instance v0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;

    invoke-direct {v0, p0, v2, p2, p3}, Lcn/icomon/icdevicemanager/ICDeviceManager$18;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V

    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    :cond_52
    :goto_52
    const-string p1, "upgrade device failed, no device"

    new-array p2, v0, [Ljava/lang/Object;

    .line 772
    invoke-static {v1, p1, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public version()Ljava/lang/String;
    .registers 2

    const-string v0, "1.3.0_build_1107_88457d18_20240612114706"

    return-object v0
.end method
