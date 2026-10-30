.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$mtu:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$mtu:I

    iput p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$status:I

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 808
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 811
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    .line 818
    :cond_1c
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;-><init>()V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 819
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v2, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v2

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$mtu:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$status:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_46

    .line 822
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "upload mtu: %d"

    invoke-static {v2, v5, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    iput v3, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->mtuSize:I

    const/4 v2, 0x0

    goto :goto_6d

    .line 826
    :cond_46
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "upload mtu error: %d"

    invoke-static {v2, v4, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$status:I

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GATT Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$7;->val$status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    .line 829
    :goto_6d
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeMTUChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v3, v0, v1, v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 830
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
