.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$status:I

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 10

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 560
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 563
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 569
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mdelTimeOutCheckList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 570
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v1

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$status:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_7a

    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 576
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattService;

    iget-object v8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->this$1:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    .line 578
    iget-object v8, v8, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v8, v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 580
    :cond_5d
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "upload discover services, %s"

    invoke-static {v1, v4, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanServiceModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanServiceModel;-><init>()V

    .line 582
    iput-object v2, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanServiceModel;->services:Ljava/util/List;

    .line 583
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, v0, v1, v3}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    goto :goto_a7

    .line 587
    :cond_7a
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "upload discover services err=%d"

    invoke-static {v1, v4, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$status:I

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GATT Exception:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4$2;->val$status:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 589
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, v0, v3, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 591
    :goto_a7
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
