.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$newState:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    iput p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$newState:I

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 10

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 435
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 438
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 442
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v1

    .line 443
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$newState:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_41

    .line 461
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    iget v8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    aput-object v2, v7, v4

    const-string v4, "connected, gatt=%d, lastState=%s"

    invoke-static {v3, v4, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b2

    :cond_41
    if-ne v3, v4, :cond_57

    .line 464
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v2, v1, v4

    const-string v2, "connecting, gatt=%d, lastState=%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_57
    if-nez v3, :cond_9b

    .line 468
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    iget v8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    aput-object v2, v7, v4

    const-string v4, "disconnected, gatt=%d, lastState=%s"

    invoke-static {v3, v4, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v4, :cond_b2

    iget v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_8f

    iget v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const v4, -0x10000003

    if-eq v3, v4, :cond_8f

    iget v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const v4, -0x10000001

    if-eq v3, v4, :cond_8f

    iget v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8f

    iget v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_b2

    :cond_8f
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 472
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_periperals(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    :cond_9b
    const/4 v7, 0x3

    if-ne v3, v7, :cond_b2

    .line 476
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v2, v1, v4

    const-string v2, "disconnecting, gatt=%d, lastState=%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b2
    :goto_b2
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 481
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v3, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mdelTimeOutCheckList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)V

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$status:I

    const-string v4, "close gatt"

    if-nez v3, :cond_13f

    :try_start_bf
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 486
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 487
    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    iget-object v7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 488
    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    iget-object v8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 489
    iget-object v8, v8, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v8, v8, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_f4

    .line 491
    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->notifyLock()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_ef} :catch_f0

    goto :goto_f4

    :catch_f0
    move-exception v3

    .line 499
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f4
    :goto_f4
    iget v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$newState:I

    if-ne v3, v5, :cond_101

    .line 502
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 503
    iput-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_154

    :cond_101
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 505
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 507
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-eq v2, v3, :cond_154

    :try_start_112
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 509
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 510
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 511
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_123} :catch_124

    goto :goto_154

    :catch_124
    move-exception v2

    .line 514
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "close gatt error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_154

    :cond_13f
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 522
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 523
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 524
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 541
    :cond_154
    :goto_154
    new-instance v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;-><init>()V

    .line 542
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v1, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 543
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeConnectChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 544
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
