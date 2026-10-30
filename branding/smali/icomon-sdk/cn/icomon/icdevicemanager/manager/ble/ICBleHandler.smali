.class public Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


# static fields
.field private static final BLE_DEFAULT_SCAN_TIME:Ljava/lang/Integer;

.field private static final BLE_DEFAULT_TIMEOUT_TIME:Ljava/lang/Integer;

.field private static final START_SCAN:Ljava/lang/Integer;

.field private static final STOP_SCAN:Ljava/lang/Integer;

.field private static ___gBleHandler:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field private BLE_HANDLER_VER:Ljava/lang/Integer;

.field private CACHE_NAME:Ljava/lang/String;

.field private ICBLE_VER_CACHE_NAME:Ljava/lang/String;

.field private final MOUDLE_NAME:Ljava/lang/String;

.field private OTA_FILTER_SCAN_COUNT:Ljava/lang/Integer;

.field _advCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private _bleAdapter:Landroid/bluetooth/BluetoothAdapter;

.field _bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private _bleManager:Landroid/bluetooth/BluetoothManager;

.field private _bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private _bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field private _bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

.field private _bm15Protocol:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _broadcastDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;",
            ">;"
        }
    .end annotation
.end field

.field private _curScanOpr:I

.field private _gattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field _inUseDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field _indicateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;",
            ">;"
        }
    .end annotation
.end field

.field _isAdving:Z

.field private _isScanning:Z

.field private _lastScanOprTime:J

.field _otaFilterScan:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _periperals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private _scanAllRefCount:Ljava/lang/Integer;

.field private _scanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private _scanCallback2:Landroid/bluetooth/le/ScanCallback;

.field private _scanRefCount:Ljava/lang/Integer;

.field private _scanServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _searchMacList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _timeOutList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/common/ICTimer;",
            ">;"
        }
    .end annotation
.end field

.field workThread:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetOTA_FILTER_SCAN_COUNT(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->OTA_FILTER_SCAN_COUNT:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_bm15Protocol(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Lcn/icomon/icbleprotocol/ICBleProtocol;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bm15Protocol:Lcn/icomon/icbleprotocol/ICBleProtocol;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_gattCallback(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothGattCallback;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_periperals(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_searchMacList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_timeOutList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;IIIII)Ljava/lang/String;
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addPeripheral(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;IIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconnectPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->connectPeripheral(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertUUIDList2StringList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->convertUUIDList2StringList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdelTimeOutCheckList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->delTimeOutCheckList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCharacteristicProperty(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetICPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPeripheralIdentifier(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getPeripheralIdentifier(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monDiscoverPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onDiscoverPeripheral(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanTimeout(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V
    .registers 1

    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->scanTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$muuid2string(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->uuid2string(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___lock:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->START_SCAN:Ljava/lang/Integer;

    sput-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->STOP_SCAN:Ljava/lang/Integer;

    const/16 v0, 0x1b58

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_DEFAULT_TIMEOUT_TIME:Ljava/lang/Integer;

    const/16 v0, 0x3a98

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_DEFAULT_SCAN_TIME:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BleHanlder"

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->MOUDLE_NAME:Ljava/lang/String;

    const-string v0, "ICBLE"

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->CACHE_NAME:Ljava/lang/String;

    const-string v0, "ICBLE_VER"

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->ICBLE_VER_CACHE_NAME:Ljava/lang/String;

    const/16 v0, 0x10

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_HANDLER_VER:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->OTA_FILTER_SCAN_COUNT:Ljava/lang/Integer;

    sget-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->START_SCAN:Ljava/lang/Integer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_curScanOpr:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_lastScanOprTime:J

    return-void
.end method

.method private addPeripheral(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;IIIII)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;",
            "IIIII)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2998
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2999
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 3000
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-static {v3, p3}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    move-object v2, v1

    :goto_29
    if-eqz v2, :cond_44

    .line 3007
    iget v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->protocolVer:I

    if-ne v0, p10, :cond_44

    iget v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceFlag:I

    if-ne v0, p9, :cond_44

    iget-object v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v0, p5, :cond_44

    iget v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->nodeId:I

    if-ne v0, p11, :cond_44

    iget v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    if-ne v0, p7, :cond_44

    iget v0, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    if-ne v0, p8, :cond_44

    return-object v1

    .line 3013
    :cond_44
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->generateUUID()Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_4e

    .line 3017
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p4

    .line 3023
    :cond_4e
    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;-><init>()V

    .line 3024
    iput-object p4, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->broadcastName:Ljava/lang/String;

    .line 3025
    iput-object p3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    .line 3026
    iput-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    .line 3027
    iput-object p2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->services:Ljava/util/List;

    .line 3028
    iput-object p5, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 3029
    iput p7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    .line 3030
    iput-object p6, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 3031
    iput-object p1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->peripheral:Landroid/bluetooth/BluetoothDevice;

    .line 3032
    iput p8, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    .line 3033
    iput p9, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceFlag:I

    .line 3034
    iput p10, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->protocolVer:I

    .line 3035
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object p1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 3036
    iput p11, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->nodeId:I

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 3038
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->refreshBLECache()V

    return-object v0
.end method

.method private addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V
    .registers 5

    .line 2842
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->isExistTimeOutCheckList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2844
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->delTimeOutCheckList(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_DEFAULT_TIMEOUT_TIME:Ljava/lang/Integer;

    .line 2846
    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;

    invoke-direct {v1, p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 2858
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2859
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return-void
.end method

.method private clearDeviceCache(Ljava/lang/String;)V
    .registers 8

    const-string v0, "BleHanlder"

    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 2925
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2926
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 2927
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_24

    .line 2928
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    .line 2929
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear cache, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2933
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->refreshBLECache()V

    return-void

    :cond_3b
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2936
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_44

    return-void

    .line 2940
    :cond_44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 2942
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_53
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2944
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2945
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 2948
    :cond_73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "already cache count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2949
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2950
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2951
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object p1

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->CACHE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->setArrayValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private connectPeripheral(Ljava/lang/String;)V
    .registers 9

    .line 1894
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    .line 1897
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v4, "start connect..."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 1898
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 1903
    iget v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->lastConnectTime:I

    sub-int v3, v1, v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_55

    .line 1905
    new-instance v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$6;

    invoke-direct {v2, p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$6;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    .line 1927
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->peripheral:Landroid/bluetooth/BluetoothDevice;

    .line 1928
    iput v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->lastConnectTime:I

    .line 1929
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_3e

    .line 1930
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_3e
    const-wide/16 v1, 0x1e

    .line 1933
    :try_start_40
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v1

    .line 1935
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1937
    :goto_48
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;

    invoke-direct {v2, p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$7;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_82

    .line 1946
    :cond_55
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "connect speed too fast, wait connect..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1949
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$8;

    invoke-direct {v0, p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$8;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    goto :goto_82

    :cond_67
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "BleHanlder"

    const-string v2, "connect %s not found"

    .line 1960
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1961
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 1962
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeConnectChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 1963
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_82
    return-void
.end method

.method private convertStringList2UUIDList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 2752
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 2756
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2757
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2759
    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->string2uuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-object v0

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private convertUUIDList2StringList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 2738
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 2742
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2743
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 2745
    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->uuid2string(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-object v0

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private delTimeOutCheckList(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 2874
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    .line 2877
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 2879
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method private disConnectPeripheral(Ljava/lang/String;)V
    .registers 8

    .line 1969
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_83

    .line 1973
    new-instance v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$9;

    invoke-direct {v3, p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$9;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    .line 1985
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_2d

    .line 1986
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v3, "gatt is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1988
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 1989
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 1990
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_9e

    .line 1993
    :cond_2d
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v4, "disconnect..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1995
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 1996
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->connectState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 1999
    :try_start_3a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2000
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2001
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2002
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->notifyLock()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v3

    .line 2007
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    :goto_5f
    const-wide/16 v3, 0x1e

    .line 2010
    :try_start_61
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception v3

    .line 2012
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2015
    :goto_69
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2019
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-eq v0, v2, :cond_9e

    .line 2020
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;-><init>()V

    .line 2021
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    iput-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUConnectModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    .line 2022
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeConnectChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v0, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2023
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_9e

    :cond_83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "BleHanlder"

    const-string v3, " disconnect %s not found"

    .line 2030
    invoke-static {v2, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2032
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2033
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeConnectChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2034
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method private discoverCharacteristics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2087
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c4

    .line 2090
    new-instance v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;-><init>()V

    .line 2091
    iput-object p2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->service:Ljava/lang/String;

    .line 2093
    new-instance v5, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;

    invoke-direct {v5, p0, v0, p1, v4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$11;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;)V

    invoke-direct {p0, p1, v5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    const-wide/16 v5, 0x1e

    .line 2104
    :try_start_1a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v5

    .line 2106
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2109
    :goto_22
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->string2uuid2(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_48

    .line 2111
    iget-object p2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v0, "gatt is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2114
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NOT_FOUND_SERVICE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2115
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, p1, v4, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2116
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_de

    .line 2119
    :cond_48
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v6, "discover characteristics"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2121
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    .line 2122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_63
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 2126
    new-instance v8, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    .line 2127
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {p0, v9}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->uuid2string(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    .line 2128
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v7

    invoke-direct {p0, v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v8, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 2129
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_63

    .line 2132
    :cond_a6
    iput-object v5, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;->characteristics:Ljava/util/List;

    .line 2133
    iget-object p2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "upload characteristics:%s"

    invoke-static {p2, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->delTimeOutCheckList(Ljava/lang/String;)V

    .line 2135
    sget-object p2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p2, p1, v4, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2136
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_de

    :cond_c4
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string v0, "BleHanlder"

    const-string v2, "discover characteristics, %s not found"

    .line 2142
    invoke-static {v0, v2, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2144
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2145
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, p1, v1, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2146
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_de
    return-void
.end method

.method private discoverServices(Ljava/lang/String;)V
    .registers 6

    .line 2041
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 2045
    new-instance v3, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;

    invoke-direct {v3, p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$10;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    .line 2056
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_2d

    .line 2057
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v3, "gatt is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2058
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2059
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2060
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_61

    .line 2063
    :cond_2d
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "discover services"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x32

    .line 2065
    :try_start_38
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    .line 2067
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2069
    :goto_40
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2070
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_61

    :cond_46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "BleHanlder"

    const-string v3, "discover services, %s not found"

    .line 2076
    invoke-static {v2, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2078
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2079
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2080
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_61
    return-void
.end method

.method private geServices(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 2775
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2776
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_b

    goto :goto_12

    .line 2781
    :cond_b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBleState(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;
    .registers 4

    .line 2696
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOff:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const/16 v1, 0xc

    if-ne v1, p1, :cond_9

    .line 2698
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    goto :goto_f

    :cond_9
    const/16 v1, 0xa

    if-ne v1, p1, :cond_f

    .line 2701
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOff:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    :cond_f
    :goto_f
    return-object v0
.end method

.method private getCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 4

    .line 2820
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2826
    :cond_8
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method

.method private getCharacteristicProperty(I)I
    .registers 4

    .line 2797
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyUnSupport:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_11

    .line 2800
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyRead:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_11
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1c

    .line 2804
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWrite:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_1c
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_27

    .line 2808
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_27
    and-int/lit8 v1, p1, 0x10

    if-gtz v1, :cond_2f

    and-int/lit8 p1, p1, 0x20

    if-lez p1, :cond_36

    .line 2813
    :cond_2f
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyNotify:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result p1

    or-int/2addr v0, p1

    :cond_36
    return v0
.end method

.method private getCharacteristics(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 2831
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2836
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 3072
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3076
    iget-object v2, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3079
    iput-object v1, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->peripheral:Landroid/bluetooth/BluetoothDevice;

    return-object p1

    :cond_1f
    return-object v0
.end method

.method private getPeripheral(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 3050
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3054
    iget-object v2, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3057
    iput-object v1, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->peripheral:Landroid/bluetooth/BluetoothDevice;

    return-object v1

    :cond_1f
    return-object v0
.end method

.method private getPeripheralCacheByMacAddr(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 3095
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 3096
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 3100
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-static {v3, p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_2c

    :cond_2b
    move-object v2, v0

    :goto_2c
    if-nez v2, :cond_2f

    return-object v0

    :cond_2f
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3110
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 3113
    iput-object p1, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->peripheral:Landroid/bluetooth/BluetoothDevice;

    return-object v2

    :cond_3e
    return-object v0
.end method

.method private getPeripheralIdentifier(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .line 2766
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getPeripheralCacheByMacAddr(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2768
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private getScanServiceUUIDs()[Ljava/util/UUID;
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1597
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1601
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    .line 1603
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1605
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 1608
    :cond_25
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    .line 1611
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1613
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1616
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_49
    return-object v1
.end method

.method private getService(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattService;
    .registers 4

    .line 2786
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2787
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_b

    goto :goto_16

    .line 2792
    :cond_b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private initEvent()V
    .registers 4

    .line 275
    const-class v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    invoke-static {v0, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 276
    const-class v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-static {v0, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    .line 279
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initHandler()V
    .registers 4

    .line 334
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->initEvent()V

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isScanning:Z

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 350
    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBroadcastScaleBM15:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bm15Protocol:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 352
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleManager:Landroid/bluetooth/BluetoothManager;

    const-string v2, "BleHanlder"

    if-nez v1, :cond_77

    const-string v1, "ble not support"

    new-array v0, v0, [Ljava/lang/Object;

    .line 354
    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnsupported:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 356
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->postBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V

    return-void

    .line 360
    :cond_77
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 366
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->refreshBluetooth()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 368
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 369
    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getBleState(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 370
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->postBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V

    const-string v1, "BleHandler Init"

    new-array v0, v0, [Ljava/lang/Object;

    .line 371
    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->readBLECache()V

    return-void
.end method

.method private isExistTimeOutCheckList(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 2864
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private onDiscoverPeripheral(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "[B)V"
        }
    .end annotation

    .line 885
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v8, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;[BLjava/lang/Integer;)V

    invoke-virtual {v0, v8}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method private onHandleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;)V
    .registers 10

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 3150
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, v1, :cond_7

    return-void

    .line 3155
    :cond_7
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;

    .line 3157
    iget-object v3, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->identifier:Ljava/lang/String;

    .line 3158
    sget-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$17;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$ICBlePublishEvent$ICBlePublishEventType:[I

    iget-object v2, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_124

    goto/16 :goto_122

    .line 3315
    :pswitch_1b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v3, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->requestMtu(Ljava/lang/String;I)V

    goto/16 :goto_122

    .line 3310
    :pswitch_28
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->readRSSI(Ljava/lang/String;)V

    goto/16 :goto_122

    .line 3295
    :pswitch_2d
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;

    if-nez v0, :cond_42

    .line 3298
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 3299
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, v3, v2, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 3300
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_122

    .line 3304
    :cond_42
    iget-boolean p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->enable:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->service:Ljava/lang/String;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->setNotify(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_122

    .line 3279
    :pswitch_4d
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    if-nez v0, :cond_62

    .line 3282
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_READDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 3283
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, v3, v2, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 3284
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_122

    .line 3289
    :cond_62
    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->data:[B

    iget-object v4, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->service:Ljava/lang/String;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->characteristic:Ljava/lang/String;

    iget-object v6, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    iget v7, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->time:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->writeValue([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    goto/16 :goto_122

    .line 3264
    :pswitch_72
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;

    if-nez v0, :cond_87

    .line 3267
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_READDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 3268
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, v3, v2, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 3269
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_122

    .line 3273
    :cond_87
    iget-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;->service:Ljava/lang/String;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePReadDataModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->readValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_122

    .line 3235
    :pswitch_90
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    .line 3237
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->characteristics()Ljava/util/Map;

    move-result-object p1

    .line 3241
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3244
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_b4

    goto :goto_9f

    .line 3251
    :cond_b4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_bb
    if-eqz v2, :cond_c1

    .line 3255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3259
    :cond_c1
    invoke-direct {p0, v3, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->discoverCharacteristics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_122

    .line 3222
    :pswitch_c5
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    if-nez v0, :cond_cd

    .line 3225
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->discoverServices(Ljava/lang/String;)V

    goto :goto_122

    .line 3229
    :cond_cd
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->discoverServices(Ljava/lang/String;)V

    goto :goto_122

    .line 3217
    :pswitch_d1
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->disConnectPeripheral(Ljava/lang/String;)V

    goto :goto_122

    .line 3212
    :pswitch_d5
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->connectPeripheral(Ljava/lang/String;)V

    goto :goto_122

    .line 3203
    :pswitch_d9
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;

    .line 3204
    iget-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;->macAddr:Ljava/lang/String;

    .line 3205
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3206
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopSerachDevice(Ljava/lang/String;)V

    goto :goto_122

    .line 3195
    :pswitch_e5
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;

    .line 3196
    iget-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSearchModel;->macAddr:Ljava/lang/String;

    .line 3197
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3198
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->searchDevice(Ljava/lang/String;)V

    goto :goto_122

    .line 3182
    :pswitch_f1
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    if-nez v0, :cond_fe

    .line 3185
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScan(Ljava/util/List;)V

    goto :goto_122

    .line 3189
    :cond_fe
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->services()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScan(Ljava/util/List;)V

    goto :goto_122

    .line 3169
    :pswitch_106
    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    if-nez v0, :cond_113

    .line 3172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScan(Ljava/util/List;)V

    goto :goto_122

    .line 3176
    :cond_113
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->services()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScan(Ljava/util/List;)V

    goto :goto_122

    .line 3162
    :pswitch_11b
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 3163
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startAdv([B)V

    :goto_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_106
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_c5
        :pswitch_90
        :pswitch_72
        :pswitch_4d
        :pswitch_2d
        :pswitch_28
        :pswitch_1b
    .end packed-switch
.end method

.method private onHandleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V
    .registers 5

    .line 3123
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeMemoryWaring:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_a

    .line 3125
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onReceiveMemoryWarning()V

    goto :goto_39

    .line 3127
    :cond_a
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeSDKModeChanged:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 3128
    invoke-direct {p0, v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->clearDeviceCache(Ljava/lang/String;)V

    goto :goto_39

    .line 3130
    :cond_15
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_2e

    .line 3131
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    if-eqz p1, :cond_2a

    .line 3134
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "identifier"

    .line 3135
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 3137
    :cond_2a
    invoke-direct {p0, v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->clearDeviceCache(Ljava/lang/String;)V

    goto :goto_39

    .line 3139
    :cond_2e
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    if-ne v0, v1, :cond_35

    goto :goto_39

    .line 3142
    :cond_35
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    sget-object p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeDisableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    :goto_39
    return-void
.end method

.method private readBLECache()V
    .registers 7

    .line 2888
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->ICBLE_VER_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_HANDLER_VER:Ljava/lang/Integer;

    .line 2889
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_21

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BleHanlder"

    const-string v2, "refresh ble cache"

    .line 2890
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2893
    :cond_21
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->getArrayValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2e

    return-void

    .line 2898
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2900
    check-cast v1, Ljava/util/Map;

    const-string v2, "communicationType"

    .line 2901
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2902
    invoke-static {}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    move-result-object v3

    aget-object v2, v3, v2

    const-string v3, "deviceType"

    .line 2904
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2906
    new-instance v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;-><init>()V

    const-string v5, "name"

    .line 2907
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->broadcastName:Ljava/lang/String;

    const-string v5, "macAddr"

    .line 2908
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v5, "identifier"

    .line 2909
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    .line 2910
    invoke-static {}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    move-result-object v5

    aget-object v3, v5, v3

    iput-object v3, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 2911
    iput-object v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    const-string v2, "services"

    .line 2912
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->services:Ljava/util/List;

    const-string v2, "subType"

    .line 2913
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const-string v2, "deviceSubType"

    .line 2914
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    const-string v2, "deviceFlag"

    .line 2915
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceFlag:I

    const-string v2, "protocolVer"

    .line 2916
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->protocolVer:I

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2918
    iget-object v2, v4, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    :cond_e6
    return-void
.end method

.method private readRSSI(Ljava/lang/String;)V
    .registers 8

    .line 2506
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 2509
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v4, "read rssi"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2512
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_1d

    .line 2514
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2515
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    goto :goto_51

    .line 2519
    :cond_1d
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v3, "read rssi error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2521
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2522
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadRSSI:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2523
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_51

    :cond_36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "BleHanlder"

    const-string v3, "read rssi failed, %s not found"

    .line 2529
    invoke-static {v2, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2531
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2532
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadRSSI:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v2, p1, v1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2533
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_51
    return-void
.end method

.method private readValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 2152
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_ab

    .line 2156
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object p3, v6, v1

    const-string v1, "read value ,service=%s, characteristic=%s"

    invoke-static {v4, v1, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    invoke-direct {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-eqz p3, :cond_92

    .line 2160
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr v1, v5

    if-lez v1, :cond_79

    .line 2162
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const-wide/16 v4, 0x1e

    .line 2164
    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v4

    .line 2166
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2169
    :goto_30
    invoke-virtual {v1, p3}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 2171
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "read value error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2173
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->uuid2string(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 2174
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;-><init>()V

    .line 2175
    new-instance v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    .line 2176
    iput-object v0, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    .line 2177
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p3

    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 2178
    iput-object v3, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 2179
    iput-object p2, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->service:Ljava/lang/String;

    .line 2181
    iput-object v2, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;->data:[B

    const p2, -0xeefffe

    const-string p3, "Read Exception:-15663102"

    .line 2183
    invoke-static {p2, p3}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createCustomError(ILjava/lang/String;)Ljava/lang/Exception;

    .line 2185
    sget-object p2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p2, p1, v1, v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2186
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_c5

    .line 2190
    :cond_79
    iget-object p2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p3, "read value error, not support read"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2192
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_READDATA_CHARACTERISTIC_NOT_READ:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2193
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p1, v2, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2194
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_c5

    .line 2198
    :cond_92
    iget-object p2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p3, "read value error, not found"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NOT_FOUND_CHARACTERISTIC:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2201
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p1, v2, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2202
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_c5

    :cond_ab
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p3, "BleHanlder"

    const-string v0, "read value, %s not found"

    .line 2207
    invoke-static {p3, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2209
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2210
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeReadData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p1, v2, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2211
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method private refreshBLECache()V
    .registers 7

    .line 2960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_periperals:Ljava/util/HashMap;

    .line 2962
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    .line 2964
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->broadcastName:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->services:Ljava/util/List;

    if-nez v3, :cond_2c

    goto :goto_f

    .line 2969
    :cond_2c
    iget-object v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v4, :cond_50

    iget v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4f

    iget v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const v4, -0x10000003

    if-eq v3, v4, :cond_4f

    iget v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const v4, -0x10000001

    if-eq v3, v4, :cond_4f

    iget v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4f

    iget v3, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_50

    :cond_4f
    return-void

    .line 2974
    :cond_50
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "identifier"

    .line 2976
    iget-object v5, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    iget-object v4, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "deviceType"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    .line 2978
    iget-object v5, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->broadcastName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "macAddr"

    .line 2979
    iget-object v5, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2980
    iget v4, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "subType"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    iget v4, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "deviceSubType"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    iget v4, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "deviceFlag"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    iget-object v4, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "communicationType"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "services"

    .line 2984
    iget-object v5, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->services:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    iget v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->protocolVer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "protocolVer"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 2988
    :cond_c0
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->setArrayValue(Ljava/lang/String;Ljava/util/List;)V

    .line 2989
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->ICBLE_VER_CACHE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->BLE_HANDLER_VER:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->setIntValue(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private refreshBluetooth()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BleHanlder"

    const-string v2, "refresh bluetooth"

    .line 384
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 386
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 387
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$2;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 425
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$4;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method private requestMtu(Ljava/lang/String;I)V
    .registers 9

    .line 2473
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 2476
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v4, "request mtu"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2479
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_1d

    .line 2481
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2482
    iget-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_51

    .line 2486
    :cond_1d
    iget-object p2, v0, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v0, "request mtu error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2488
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2489
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeMTUChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, p1, v1, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2490
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_51

    :cond_36
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string v0, "BleHanlder"

    const-string v2, "request mtu failed, %s not found"

    .line 2496
    invoke-static {v0, v2, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2498
    sget-object p2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p2

    .line 2499
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeMTUChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, p1, v1, p2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2500
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_51
    return-void
.end method

.method private scanTimeout()V
    .registers 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BleHanlder"

    const-string v3, "scan interval timeout"

    .line 305
    invoke-static {v2, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScanInterval()V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_lastScanOprTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v3, v5

    if-gez v1, :cond_22

    const-string v1, "last scan interval is too short"

    new-array v0, v0, [Ljava/lang/Object;

    .line 309
    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_22
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_curScanOpr:I

    sget-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->START_SCAN:Ljava/lang/Integer;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_39

    sget-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->STOP_SCAN:Ljava/lang/Integer;

    .line 313
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_curScanOpr:I

    .line 314
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScan(Ljava/util/List;)V

    goto :goto_42

    .line 317
    :cond_39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_curScanOpr:I

    .line 318
    invoke-virtual {p0, v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScan(Ljava/util/List;)V

    :goto_42
    return-void
.end method

.method private searchDevice(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "BleHanlder"

    const-string v4, "start search %s"

    .line 1626
    invoke-static {v3, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 1628
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1629
    invoke-static {p1, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%s already in cache"

    .line 1630
    invoke-static {v3, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1637
    :cond_2f
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getPeripheralCacheByMacAddr(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 1640
    iget v4, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    const/16 v5, 0x180d

    if-eq v4, v5, :cond_8a

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "already search device:%s"

    .line 1641
    invoke-static {v3, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1643
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;-><init>()V

    .line 1644
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    .line 1645
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->services:Ljava/util/List;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->services:Ljava/util/List;

    .line 1646
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->broadcastName:Ljava/lang/String;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    .line 1647
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    .line 1648
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 1649
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1650
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->rssi:Ljava/lang/Integer;

    .line 1651
    iget v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->subType:I

    iput v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1652
    iget v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceSubType:I

    iput v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    .line 1653
    iget v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->deviceFlag:I

    iput v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    const/4 v0, 0x0

    .line 1654
    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    .line 1655
    iget v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->protocolVer:I

    iput v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    .line 1656
    iget v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->nodeId:I

    iput v2, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    .line 1657
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->identifier:Ljava/lang/String;

    invoke-static {v2, v1, p1, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 1659
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_a0

    :cond_8a
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "cache no device:%s, start scan"

    .line 1662
    invoke-static {v3, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 1664
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScan(Ljava/util/List;)V

    :goto_a0
    return-void
.end method

.method private setNotify(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v12, p0

    move/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    .line 2304
    invoke-direct {v12, v9}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v11, :cond_1ab

    .line 2307
    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set notify  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", characteristic:%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v10, v2, v15

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2309
    invoke-direct {v12, v9, v8, v10}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    if-eqz v6, :cond_192

    .line 2312
    new-instance v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;-><init>()V

    .line 2313
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    iput-object v0, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 2314
    iget-object v0, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    iput-object v10, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    .line 2315
    iget-object v0, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-direct {v12, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 2316
    iput-object v8, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->service:Ljava/lang/String;

    .line 2317
    iput-boolean v7, v5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->enable:Z

    .line 2319
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-gtz v0, :cond_84

    .line 2320
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_6a

    goto :goto_84

    .line 2444
    :cond_6a
    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "set notify error, not support"

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2445
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NOT_SUPPORT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2446
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v1, v9, v5, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2447
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_1c6

    .line 2323
    :cond_84
    :goto_84
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$13;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v4, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$13;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;)V

    invoke-direct {v12, v9, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    .line 2333
    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const-wide/16 v2, 0x64

    .line 2335
    :try_start_9d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a6

    :catch_a1
    move-exception v0

    move-object v2, v0

    .line 2337
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2340
    :goto_a6
    invoke-virtual {v1, v13, v7}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 2343
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15e

    .line 2344
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15e

    .line 2345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 2347
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_d9

    if-eqz v7, :cond_d6

    .line 2349
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_da

    .line 2352
    :cond_d6
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_da

    :cond_d9
    move-object v4, v14

    .line 2355
    :goto_da
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-lez v5, :cond_e9

    if-eqz v7, :cond_e7

    .line 2357
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_e9

    .line 2360
    :cond_e7
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 2363
    :cond_e9
    :goto_e9
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2364
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    const/4 v3, 0x1

    goto :goto_bd

    :cond_f1
    if-eqz v3, :cond_15e

    .line 2371
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 2372
    new-instance v6, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    invoke-direct {v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;-><init>()V

    iget-object v1, v12, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2373
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 2374
    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v2, "already last indicate key"

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v12, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2375
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;

    iget-object v2, v12, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2376
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_123

    .line 2378
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->notifyLock()V

    :cond_123
    iget-object v1, v12, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2381
    invoke-virtual {v1, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ICIndicateMapHandler-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->addWorkThread(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v15

    .line 2383
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v5

    new-instance v4, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v10, v4

    move-object v4, v13

    move-object v13, v5

    move-object/from16 v5, p3

    move-object v8, v6

    move/from16 v6, p1

    move-object v7, v8

    move-object v8, v14

    move-object/from16 v9, p2

    move-object v14, v10

    move v10, v0

    invoke-direct/range {v1 .. v11}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda1;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;Ljava/lang/String;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V

    invoke-virtual {v13, v15, v14}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Landroid/os/Handler;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_1c6

    .line 2423
    :cond_15e
    invoke-direct {v12, v9}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->delTimeOutCheckList(Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 2424
    iput-boolean v7, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->enable:Z

    if-eqz v0, :cond_177

    .line 2428
    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v2, "set notify success"

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2429
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v0, v9, v1, v14}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    goto :goto_18e

    .line 2433
    :cond_177
    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "set notify error"

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, -0xef0000

    const-string v1, "GATT Exception:-15663104"

    .line 2434
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 2435
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v1, v9, v14, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2437
    :goto_18e
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_1c6

    .line 2452
    :cond_192
    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string v1, "set notify error, not found"

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2454
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2455
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v1, v9, v14, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2456
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_1c6

    :cond_1ab
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v9, v0, v15

    const-string v1, "BleHanlder"

    const-string v2, "set notify failed, %s not found"

    .line 2462
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2464
    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object v0

    .line 2465
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {v1, v9, v14, v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 2466
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :goto_1c6
    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___lock:Ljava/lang/Integer;

    .line 209
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___gBleHandler:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    if-nez v1, :cond_11

    .line 211
    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___gBleHandler:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 212
    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->initHandler()V

    .line 214
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___gBleHandler:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    return-object v0

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private startAdv([B)V
    .registers 10

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2543
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;

    .line 2544
    array-length v4, p1

    iget-object v5, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->data:[B

    array-length v5, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    .line 2546
    :goto_1b
    array-length v5, p1

    if-ge v4, v5, :cond_2a

    .line 2547
    aget-byte v5, p1, v4

    .line 2548
    iget-object v6, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->data:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_27

    const/4 v3, 0x0

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    if-eqz v3, :cond_6

    return-void

    .line 2559
    :cond_2d
    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;-><init>()V

    .line 2560
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->data:[B

    const/16 v1, 0x7d0

    .line 2561
    iput v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->time:I

    .line 2562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2563
    :goto_3e
    array-length v5, p1

    const/4 v6, 0x2

    div-int/2addr v5, v6

    if-eq v4, v5, :cond_68

    new-array v5, v6, [B

    mul-int/lit8 v6, v4, 0x2

    .line 2565
    aget-byte v7, p1, v6

    aput-byte v7, v5, v2

    add-int/2addr v6, v3

    .line 2566
    aget-byte v6, p1, v6

    aput-byte v6, v5, v3

    .line 2568
    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "0000%s-0000-1000-8000-00805F9B34FB"

    .line 2570
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 2572
    :cond_68
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->uuids:Ljava/util/List;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2573
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2574
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->checkAdvDataFlow()V

    return-void
.end method

.method private startScan(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1690
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 1692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-gez v0, :cond_f

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    :cond_f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1694
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_19

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    :cond_19
    const/4 v0, 0x1

    if-eqz p1, :cond_28

    .line 1700
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_28

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    .line 1702
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_28
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1706
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1710
    :goto_35
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getScanServiceUUIDs()[Ljava/util/UUID;

    move-result-object v2

    iget-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isScanning:Z

    const-wide/16 v4, 0x1e

    const-string v6, "BleHanlder"

    if-eqz v3, :cond_69

    .line 1715
    :try_start_41
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v3

    .line 1717
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_49
    :try_start_49
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 1722
    invoke-virtual {v3, v7}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_69

    :catch_51
    move-exception v3

    .line 1729
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "stop scan exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_69
    :goto_69
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1735
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isScanning:Z

    .line 1739
    :try_start_78
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v3

    .line 1741
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_80
    const-string v3, "start scan exception: "

    const-string v4, "start scan2, refCount=%d"

    const/4 v5, 0x2

    if-eqz p1, :cond_f2

    .line 1745
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_f2

    .line 1772
    :cond_8e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    array-length v7, v2

    const/4 v8, 0x0

    :goto_95
    if-ge v8, v7, :cond_b4

    aget-object v9, v2, v8

    .line 1775
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 1776
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    .line 1775
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 1780
    :cond_b4
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    aput-object v5, v0, v1

    .line 1781
    invoke-static {v6, v4, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_lastScanOprTime:J

    .line 1783
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScanInterval()V

    :try_start_d3
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 1785
    invoke-virtual {v0, p1, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_da} :catch_db

    goto :goto_13f

    :catch_db
    move-exception p1

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13f

    :cond_f2
    :goto_f2
    new-array p1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    aput-object v2, p1, v1

    const-string v2, "start scan1, refCount=%d"

    .line 1746
    invoke-static {v6, v2, p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 1751
    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 1759
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    aput-object v5, v0, v1

    .line 1761
    invoke-static {v6, v4, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_lastScanOprTime:J

    .line 1763
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->startScanInterval()V

    :try_start_121
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 1765
    invoke-virtual {v0, p1, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_128} :catch_129

    goto :goto_13f

    :catch_129
    move-exception p1

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13f
    return-void
.end method

.method private startScanInterval()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 290
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    const/16 v0, 0xbb8

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$1;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 299
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BleHanlder"

    const-string v2, "start scan interval timer"

    .line 300
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private stopScanInterval()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BleHanlder"

    const-string v2, "stop scan interval timer"

    .line 325
    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 326
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_16
    return-void
.end method

.method private stopSerachDevice(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "BleHanlder"

    const-string v4, "stop search %s"

    .line 1674
    invoke-static {v3, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 1676
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1677
    invoke-static {p1, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 1678
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "remove search %s"

    .line 1679
    invoke-static {v3, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1681
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScan(Ljava/util/List;)V

    :cond_3e
    return-void
.end method

.method private string2uuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 2

    .line 2728
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method

.method private string2uuid2(Ljava/lang/String;)Ljava/util/UUID;
    .registers 2

    .line 2733
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method private uuid2string(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .registers 2

    .line 2723
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uuid2string(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    .line 2718
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeValue([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V
    .registers 9

    const/4 p5, 0x0

    if-eqz p1, :cond_c7

    .line 2217
    array-length v0, p1

    if-nez v0, :cond_8

    goto/16 :goto_c7

    :cond_8
    if-eqz p6, :cond_13

    int-to-long v0, p6

    .line 2225
    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p6

    .line 2227
    invoke-virtual {p6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2230
    :cond_13
    :goto_13
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getICPeripheral(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    move-result-object p6

    const/4 v0, 0x0

    if-eqz p6, :cond_ab

    .line 2233
    invoke-direct {p0, p2, p3, p4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p4

    if-eqz p4, :cond_92

    .line 2235
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-gtz v1, :cond_4b

    .line 2236
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_31

    goto :goto_4b

    .line 2273
    :cond_31
    iget-object p1, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p3, "write value error, not support write"

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2275
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_CHARACTERISTIC_NOT_WRITE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 2276
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p2, p5, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2277
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto/16 :goto_c6

    .line 2237
    :cond_4b
    :goto_4b
    iget-object p2, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2238
    invoke-virtual {p4, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2247
    invoke-virtual {p2, p4}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_c6

    .line 2250
    iget-object p1, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p5, "write value fail"

    new-array p6, v0, [Ljava/lang/Object;

    invoke-static {p1, p5, p6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2252
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;-><init>()V

    .line 2253
    new-instance p5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {p5}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    .line 2254
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p6

    invoke-direct {p0, p6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->uuid2string(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    .line 2255
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p4

    invoke-direct {p0, p4}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p5, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 2256
    iput-object p5, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 2257
    iput-object p3, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;->service:Ljava/lang/String;

    .line 2260
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p3

    new-instance p4, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;

    invoke-direct {p4, p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$12;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothGatt;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUWriteDataResultModel;)V

    invoke-virtual {p3, p4}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_c6

    .line 2283
    :cond_92
    iget-object p1, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p3, "write value error, not found"

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2285
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NOT_FOUND_CHARACTERISTIC:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 2286
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p2, p5, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2287
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_c6

    :cond_ab
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    const-string p3, "BleHanlder"

    const-string p4, "write value, %s not found"

    .line 2293
    invoke-static {p3, p4, p1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2295
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 2296
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p2, p5, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2297
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :cond_c6
    :goto_c6
    return-void

    .line 2218
    :cond_c7
    :goto_c7
    sget-object p1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_DATA_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;

    move-result-object p1

    .line 2219
    sget-object p3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeWriteData:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p3, p2, p5, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2220
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method


# virtual methods
.method _checkAdvDataFlow()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_13

    .line 2596
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 2602
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2612
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    :cond_31
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2616
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;

    .line 2618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v4, v3

    .line 2620
    iget v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->startTime:I

    if-lez v3, :cond_63

    .line 2622
    iget v3, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->startTime:I

    sub-int v3, v4, v3

    mul-int/lit16 v3, v3, 0x3e8

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->time:I

    if-lt v3, v5, :cond_62

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2624
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 2627
    invoke-virtual {v3, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    goto :goto_63

    :cond_62
    return-void

    :cond_63
    :goto_63
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDatas:Ljava/util/List;

    .line 2637
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_75

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_74

    .line 2639
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_74
    return-void

    :cond_75
    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 2646
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    .line 2652
    :cond_82
    new-instance v1, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const/4 v3, 0x2

    .line 2653
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 2654
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 2655
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const/4 v3, 0x3

    .line 2656
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 2657
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v1

    .line 2660
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 2661
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    const/4 v2, 0x1

    .line 2662
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 2664
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->uuids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ab
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 2665
    invoke-virtual {v3, v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    goto :goto_ab

    .line 2669
    :cond_bb
    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v3

    .line 2671
    new-instance v5, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$15;

    invoke-direct {v5, p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$15;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V

    iput-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 2681
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "change unit "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->data:[B

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Test"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 2682
    invoke-virtual {v5, v1, v3, v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 2683
    iput v4, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;->startTime:I

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isAdving:Z

    return-void
.end method

.method checkAdvDataFlow()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-nez v0, :cond_18

    const/16 v0, 0x32

    .line 2582
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$14;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$14;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 2588
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    :cond_18
    return-void
.end method

.method public deInit()V
    .registers 5

    .line 221
    invoke-static {p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->unsubscribe(Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 223
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 224
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2f

    :cond_20
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "BleHanlder"

    const-string v3, "context is null, receiver can not unregister!!!!"

    .line 227
    invoke-static {v2, v3, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ICDeviceManagerSDK"

    .line 228
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleStateReceiver:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 234
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    nop

    :goto_3a
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_43

    .line 244
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_broadcastDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_43
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_4c

    .line 248
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_4c
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_advCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 253
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdv:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    :cond_59
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 257
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v2, :cond_63

    .line 261
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    goto :goto_63

    :cond_75
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 265
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 266
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleManager:Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleAdapter:Landroid/bluetooth/BluetoothAdapter;

    sput-object v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->___gBleHandler:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    return-void
.end method

.method synthetic lambda$setNotify$0$cn-icomon-icdevicemanager-manager-ble-ICBleHandler(Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;ZZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2397
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2398
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ICIndicateMapHandler-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->removeWorkThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_indicateMap:Ljava/util/HashMap;

    .line 2399
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->delTimeOutCheckList(Ljava/lang/String;)V

    .line 2401
    iput-boolean p4, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->enable:Z

    const/4 p1, 0x0

    const/4 p4, 0x0

    if-eqz p5, :cond_3b

    .line 2406
    iget-object p5, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p6, "set notify success"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p5, p6, p4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2407
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p4, p2, p3, p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    goto :goto_52

    .line 2411
    :cond_3b
    iget-object p3, p6, Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;->macAddr:Ljava/lang/String;

    const-string p5, "set notify error"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3, p5, p4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p3, -0xef0000

    const-string p4, "GATT Exception:-15663104"

    .line 2412
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->createSystemError(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p3

    .line 2413
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-static {p4, p2, p1, p3}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object p1

    .line 2415
    :goto_52
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    :cond_55
    return-void
.end method

.method synthetic lambda$setNotify$1$cn-icomon-icdevicemanager-manager-ble-ICBleHandler(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;Ljava/lang/String;Ljava/lang/String;ZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V
    .registers 21

    .line 2384
    new-instance v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;-><init>()V

    .line 2385
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;-><init>()V

    iput-object v0, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 2386
    iget-object v0, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    move-object v1, p1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    .line 2387
    iget-object v0, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    move-object v8, p0

    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getCharacteristicProperty(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    move-object v0, p3

    .line 2388
    iput-object v0, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->service:Ljava/lang/String;

    move v5, p4

    .line 2389
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;->enable:Z

    .line 2393
    invoke-virtual/range {p5 .. p5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->waitLock()V

    .line 2396
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v9

    new-instance v10, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;-><init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;ZZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V

    invoke-virtual {v9, v10}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    .line 2708
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    if-eqz v0, :cond_a

    .line 2709
    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onHandleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;)V

    goto :goto_13

    .line 2711
    :cond_a
    instance-of v0, p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    if-eqz v0, :cond_13

    .line 2712
    check-cast p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onHandleGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onReceiveMemoryWarning()V
    .registers 1

    return-void
.end method

.method public onUpdateBleState(I)V
    .registers 6

    .line 868
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->getBleState(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "BleHanlder"

    const-string v2, "ble state changed: old %s, new %d"

    invoke-static {p1, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-eq v0, p1, :cond_21

    .line 871
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScanInterval()V

    :cond_21
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-ne v0, p1, :cond_26

    return-void

    :cond_26
    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleState:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_inUseDevices:Ljava/util/HashMap;

    .line 877
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 878
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->reInit()V

    .line 879
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->refreshBluetooth()V

    .line 880
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->postBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V

    return-void
.end method

.method public postBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 4

    .line 858
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;-><init>()V

    .line 859
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUStateModel;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 860
    new-instance p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-direct {p1}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;-><init>()V

    .line 861
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeStateChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iput-object v1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    .line 862
    iput-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    .line 863
    invoke-static {p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method

.method public reInit()V
    .registers 6

    const/4 v0, 0x0

    .line 841
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BleHanlder"

    const-string v4, "re-init"

    .line 840
    invoke-static {v3, v4, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isScanning:Z

    .line 844
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScanInterval()V

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_searchMacList:Ljava/util/ArrayList;

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 848
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 850
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    goto :goto_2f

    :cond_3f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_timeOutList:Ljava/util/HashMap;

    .line 852
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public stopScan(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1804
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "BleHanlder"

    const/4 v2, 0x0

    .line 1807
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-gtz v0, :cond_1c

    const-string p1, "no start scan, so no stop scan"

    new-array v0, v2, [Ljava/lang/Object;

    .line 1806
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1808
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScanInterval()V

    return-void

    :cond_1c
    const/4 v0, 0x1

    if-eqz p1, :cond_77

    .line 1811
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_26

    goto :goto_77

    :cond_26
    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    .line 1819
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    .line 1822
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_46

    goto :goto_2d

    .line 1828
    :cond_46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1831
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1833
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5a

    goto :goto_4a

    :cond_6f
    if-ltz v5, :cond_84

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanServices:Ljava/util/ArrayList;

    .line 1855
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_84

    :cond_77
    :goto_77
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1813
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    :cond_84
    :goto_84
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1859
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "stop scan, ref count = %d"

    .line 1860
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    .line 1862
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_a4

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    :cond_a4
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    .line 1868
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_d3

    .line 1870
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScanInterval()V

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanRefCount:Ljava/lang/Integer;

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanAllRefCount:Ljava/lang/Integer;

    const-wide/16 v3, 0x1e

    .line 1874
    :try_start_b5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception p1

    .line 1876
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1880
    :goto_bd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_lastScanOprTime:J

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_bleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_scanCallback2:Landroid/bluetooth/le/ScanCallback;

    .line 1881
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_isScanning:Z

    const-string p1, "no scan ref count , so stop scan"

    new-array v0, v2, [Ljava/lang/Object;

    .line 1888
    invoke-static {v1, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d3
    return-void
.end method
