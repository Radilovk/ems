.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ICBleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->refreshBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 425
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 706
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 710
    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_15

    .line 713
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 717
    :goto_16
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;

    invoke-direct {v2, p0, p1, p2, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$5;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 599
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 603
    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_15

    .line 606
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    move-object v6, v0

    .line 610
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$3;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    invoke-virtual {v0, v7}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 651
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 654
    :cond_9
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$4;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 428
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 431
    :cond_9
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;II)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    .line 751
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 752
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onDescriptorWrite "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 754
    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    if-eqz p2, :cond_2e

    .line 756
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->notifyLock()V

    .line 761
    :cond_2e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onDescriptorWriteEEE "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 801
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 802
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 805
    :cond_c
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;II)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 767
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 770
    :cond_9
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$6;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;II)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 554
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 557
    :cond_9
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method
