.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->writeValue([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothGatt;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    const v0, -0xeeffff

    const-string v1, "Write Exception:  0xFF110001"

    .line 2265
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createCustomError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 2267
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2268
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
