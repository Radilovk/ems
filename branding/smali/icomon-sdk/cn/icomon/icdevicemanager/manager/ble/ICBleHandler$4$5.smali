.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$mData:[B


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$mData:[B

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 720
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 723
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 728
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 729
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    .line 730
    new-instance v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;-><init>()V

    .line 731
    new-instance v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    .line 732
    iput-object v2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 733
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    invoke-static {v2, v5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetCharacteristicProperty(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 734
    iput-object v4, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 735
    iput-object v1, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->service:Ljava/lang/String;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$mData:[B

    .line 737
    iput-object v1, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->data:[B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 738
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v1

    .line 740
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;->val$mData:[B

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    iget-object v4, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    aput-object v4, v2, v5

    const-string v4, "upload data2: %s, uuid:%s"

    invoke-static {v1, v4, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
