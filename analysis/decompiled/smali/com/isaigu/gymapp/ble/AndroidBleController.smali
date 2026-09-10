.class public Lcom/isaigu/gymapp/ble/AndroidBleController;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Lcom/isaigu/gymapp/ble/BleInterface;


# static fields
.field public static final ACTION_DATA_AVAILABLE:I = 0x68

.field public static final ACTION_DEVICE_DOES_NOT_SUPPORT_UART:I = 0x6a

.field public static final ACTION_GATT_CONNECTED:I = 0x65

.field public static final ACTION_GATT_DISCONNECTED:I = 0x66

.field public static final ACTION_GATT_READ_RSSI:I = 0x69

.field public static final ACTION_GATT_SERVICES_DISCOVERED:I = 0x67

.field public static final ANDROID_CONTROL_UUID:Ljava/util/UUID;

.field public static final ANDROID_NOTIFY_UUID:Ljava/util/UUID;

.field public static final ANDROID_SERVICE_UUID:Ljava/util/UUID;

.field private static final NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

.field public static final REQUEST_ENABLE_BT:I = 0x2


# instance fields
.field private activity:Landroid/app/Activity;

.field private bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

.field private filterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mDisConnectedGattMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z

.field private scanDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private notifiedAddresses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

    .line 32
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    .line 33
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_CONTROL_UUID:Ljava/util/UUID;

    .line 34
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 63
    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$1;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$2;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 171
    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$3;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 88
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifiedAddresses:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    .line 93
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    const-string v2, "0001"

    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    const-string v2, "0002"

    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_CONTROL_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    const-string v2, "0003"

    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->close(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->enableTXNotification(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifyGattReady(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    const-string v0, "event ==== mBluetoothGatt closed"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 520
    const/4 p1, 0x0

    .line 521
    goto :goto_0
.end method

.method private enableTXNotification(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 525
    if-nez p1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 529
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_2

    .line 530
    const-string v3, "service not found!"

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 534
    :cond_2
    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 535
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_3

    .line 536
    const-string v3, "Tx charateristic not found!"

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 540
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 542
    sget-object v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 543
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v1, :cond_4

    .line 544
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 545
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifyGattReady(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0
.end method

.method private notifyGattReady(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MacUtils;->formatBleMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifiedAddresses:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifiedAddresses:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/isaigu/gymapp/ble/AndroidBleController$7;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/ble/AndroidBleController$7;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V
    .locals 4
    .param p1, "filterbean"    # Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .prologue
    .line 762
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 766
    const/4 v0, 0x1

    .line 767
    .local v0, "accept":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 768
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    invoke-virtual {v2, p1}, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 769
    const/4 v0, 0x0

    .line 773
    :cond_2
    if-eqz v0, :cond_0

    .line 774
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public connectByAddress(Ljava/lang/String;)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_cleanup
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cleanup_done

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    if-eqz v3, :cond_cleanup

    iget-object v4, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cleanup

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->close(Landroid/bluetooth/BluetoothGatt;)V

    iget-object v4, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :cond_cleanup

    :cond_cleanup_done
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/MacUtils;->formatBleMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 379
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event === Device not found.  Unable to connect.   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 388
    :goto_0
    return v1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v2, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 387
    const-string v1, "event === Trying to create a new connection."

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public disconnectAll()V
    .locals 6

    .prologue
    .line 493
    :try_start_0
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    .line 494
    const-string v3, "BluetoothAdapter not initialized"

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 501
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 502
    .local v2, "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event disconnectAll =====    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v3, :cond_1

    .line 504
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v2, v5}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 509
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .end local v2    # "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 508
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disconnectByAddress(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 471
    const-string v2, "BluetoothAdapter not initialized"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    move v2, v3

    .line 487
    :goto_0
    return v2

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 475
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 478
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 479
    .local v1, "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event disconnect ===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 484
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .end local v1    # "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_3
    move v2, v3

    .line 487
    goto :goto_0
.end method

.method public getBleState()I
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x2

    .line 720
    :goto_0
    return v0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 718
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 720
    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getConnectState(Ljava/lang/String;)I
    .locals 9
    .param p1, "uniqueUUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 596
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    .line 601
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .restart local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_1
    if-nez v1, :cond_2

    move v3, v4

    .line 610
    :goto_0
    return v3

    .line 604
    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 605
    .local v2, "state":I
    if-ne v2, v5, :cond_3

    move v3, v5

    .line 606
    goto :goto_0

    .line 607
    :cond_3
    if-ne v2, v6, :cond_4

    move v3, v6

    .line 608
    goto :goto_0

    :cond_4
    move v3, v4

    .line 610
    goto :goto_0
.end method

.method public getRoughlyDistance()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getmGattMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    goto :goto_0
.end method

.method public init()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    invoke-interface {v0, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    :cond_0
    move v0, v1

    .line 589
    :goto_0
    return v0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    invoke-interface {v0, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    :cond_2
    move v0, v1

    .line 580
    goto :goto_0

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 584
    const-string v0, "onClick - BT not enabled yet"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0

    .line 589
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBleScanning()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 753
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 757
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :goto_0
    return v1

    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_1
    move v1, v2

    .line 754
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_2
    move v1, v2

    .line 757
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 278
    return-void
.end method

.method public read(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 667
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 668
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->read(Ljava/lang/String;Ljava/lang/String;)Z

    .line 669
    const/4 v1, 0x1

    .line 671
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v4, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v4, v4, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    .line 683
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .restart local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_1
    if-nez v1, :cond_2

    move v4, v5

    .line 696
    :goto_0
    return v4

    .line 686
    :cond_2
    sget-object v4, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    .line 687
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move v4, v5

    goto :goto_0

    .line 691
    :cond_3
    iget-object v4, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 692
    .local v2, "readCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v2, :cond_4

    .line 694
    move v4, v5

    goto :goto_0

    .line 696
    :cond_4
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    goto :goto_0
.end method

.method public readRSSI(Ljava/lang/String;)V
    .locals 3
    .param p1, "uniqueUUID"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 552
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 557
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_1
    return-void
.end method

.method public requestCloseBle()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$5;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 748
    return-void
.end method

.method public requestOpenBle()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$4;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method

.method public setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    .line 702
    return-void
.end method

.method public startScan()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->startScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 345
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    if-eqz v1, :cond_already_scanning

    .line 344
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 347
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 348
    if-nez p1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    invoke-interface {v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBeginScan()V

    .line 357
    :cond_0
    return v0

    :cond_already_scanning
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-array v2, v2, [Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    invoke-interface {v0}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onStopScan()V

    .line 374
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 626
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v6, v6, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    .line 631
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .restart local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_1
    if-nez v1, :cond_1b

    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    :cond_1b
    if-nez v1, :cond_2

    move v6, v7

    :goto_0
    return v6

    .line 634
    :cond_2
    sget-object v6, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 635
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_3

    move v6, v7

    goto :goto_0

    .line 639
    :cond_3
    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 641
    .local v5, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v5, :cond_4

    .line 643
    move v6, v7

    goto :goto_0

    .line 645
    :cond_4
    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 646
    invoke-virtual {v5, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 647
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    .line 648
    .local v3, "status":Z
    const/4 v4, 0x0

    .line 649
    .local v4, "time":I
    :goto_1
    if-nez v3, :cond_5

    const/4 v6, 0x3

    if-ge v4, v6, :cond_5

    .line 650
    add-int/lit8 v4, v4, 0x1

    .line 651
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    goto :goto_1

    .line 661
    :cond_5
    if-eqz v3, :cond_6

    const-string/jumbo v6, "write success"

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    move v6, v8

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_0
.end method

.method public writeOnUiThread(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "value"    # [B

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    return-void

    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ble/AndroidBleController$6;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(Ljava/lang/String;[B)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 615
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 617
    const/4 v1, 0x1

    .line 619
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method
