.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->connectPeripheral(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 1937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 1940
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_gattCallback(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;->val$peripheral:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 1941
    iput-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method
