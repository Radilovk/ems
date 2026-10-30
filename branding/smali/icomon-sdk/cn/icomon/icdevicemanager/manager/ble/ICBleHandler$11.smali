.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->discoverCharacteristics(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

.field final synthetic val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$identifier:Ljava/lang/String;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 2096
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "discover characteristics timeout"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2098
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCOVER_CHARACTERISTIC_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2099
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$identifier:Ljava/lang/String;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2100
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
