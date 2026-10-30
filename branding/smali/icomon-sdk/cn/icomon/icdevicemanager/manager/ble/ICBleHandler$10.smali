.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->discoverServices(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;->val$identifier:Ljava/lang/String;

    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 2049
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "discover services timeout"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2051
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCOVER_SERVICE_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2052
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;->val$identifier:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2053
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
