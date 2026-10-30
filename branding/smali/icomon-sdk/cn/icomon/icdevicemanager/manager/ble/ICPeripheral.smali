.class public Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;
.super Ljava/lang/Object;
.source "ICPeripheral.java"


# instance fields
.field public broadcastName:Ljava/lang/String;

.field public communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

.field public connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

.field public deviceFlag:I

.field public deviceSubType:I

.field public deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public gatt:Landroid/bluetooth/BluetoothGatt;

.field public gattServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public identifier:Ljava/lang/String;

.field public lastConnectTime:I

.field public macAddr:Ljava/lang/String;

.field public nodeId:I

.field public peripheral:Landroid/bluetooth/BluetoothDevice;

.field public protocolVer:I

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
