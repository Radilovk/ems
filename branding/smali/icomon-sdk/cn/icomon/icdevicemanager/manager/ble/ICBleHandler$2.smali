.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;
.super Landroid/bluetooth/le/ScanCallback;
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 387
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .registers 5

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan device failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BleHanlder"

    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 9

    .line 391
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 392
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 394
    invoke-static {v0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$mconvertUUIDList2StringList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 395
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 396
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$monDiscoverPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V

    return-void
.end method
