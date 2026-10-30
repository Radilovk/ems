.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$3;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$3;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 10

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$3;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$monDiscoverPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V

    return-void
.end method
