.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$status:I

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 657
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 661
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 662
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;-><init>()V

    .line 663
    new-instance v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 664
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 665
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    invoke-static {v3, v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetCharacteristicProperty(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 666
    iput-object v2, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 667
    iput-object v0, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->service:Ljava/lang/String;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 669
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_60

    return-void

    :cond_60
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 674
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v3, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 675
    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$status:I

    const/4 v4, 0x0

    if-eqz v3, :cond_d6

    .line 680
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x1

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    aput-object v2, v3, v5

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const-string v2, "write data error:%d, %d,%s"

    invoke-static {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_95
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "refresh"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    new-array v3, v4, [Ljava/lang/Object;

    .line 684
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_95 .. :try_end_b0} :catch_bb
    .catch Ljava/lang/IllegalAccessException; {:try_start_95 .. :try_end_b0} :catch_b6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_95 .. :try_end_b0} :catch_b1

    goto :goto_bf

    :catch_b1
    move-exception v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_bf

    :catch_b6
    move-exception v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_bf

    :catch_bb
    move-exception v0

    .line 686
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_bf
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$status:I

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GATT Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    goto :goto_e0

    .line 696
    :cond_d6
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v2, "write data success"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 698
    :goto_e0
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 699
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
