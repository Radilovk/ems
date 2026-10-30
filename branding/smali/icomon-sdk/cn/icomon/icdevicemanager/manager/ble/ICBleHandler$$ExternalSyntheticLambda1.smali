.class public final synthetic Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# instance fields
.field public final synthetic f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;


# direct methods
.method public synthetic constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;Ljava/lang/String;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$4:Z

    iput-object p6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$5:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    iput-object p7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iput-boolean p9, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$8:Z

    iput-object p10, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$9:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$4:Z

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$5:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iget-boolean v8, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$8:Z

    iget-object v9, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;->f$9:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    invoke-virtual/range {v0 .. v9}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->lambda$setNotify$1$cn-icomon-icdevicemanager-manager-ble-ICBleHandler(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;Ljava/lang/String;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V

    return-void
.end method
