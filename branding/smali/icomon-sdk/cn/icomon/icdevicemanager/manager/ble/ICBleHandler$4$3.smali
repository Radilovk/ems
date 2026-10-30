.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
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

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .registers 6

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$status:I

    iput-object p5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$mData:[B

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 613
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 616
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 620
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 623
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 624
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    .line 625
    new-instance v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;-><init>()V

    .line 626
    new-instance v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    .line 627
    iput-object v3, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 628
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v6

    invoke-static {v3, v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetCharacteristicProperty(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 629
    iput-object v5, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 630
    iput-object v2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->service:Ljava/lang/String;

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$status:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_85

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$mData:[B

    .line 635
    iput-object v2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->data:[B

    .line 636
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$mData:[B

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "upload data: %s"

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_ac

    .line 640
    :cond_85
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "upload data error: %d"

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$status:I

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GATT Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;->val$status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 643
    :goto_ac
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, v0, v4, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
