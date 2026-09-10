.class public Lcom/clj/fastble/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/BleManager$BleManagerHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_OVER_TIME:I = 0x2710

.field private static final DEFAULT_CONNECT_RETRY_COUNT:I = 0x0

.field private static final DEFAULT_CONNECT_RETRY_INTERVAL:I = 0x1388

.field private static final DEFAULT_MAX_MTU:I = 0x200

.field private static final DEFAULT_MAX_MULTIPLE_DEVICE:I = 0x7

.field private static final DEFAULT_MTU:I = 0x17

.field private static final DEFAULT_OPERATE_TIME:I = 0x1388

.field public static final DEFAULT_SCAN_TIME:I = 0x2710

.field private static final DEFAULT_WRITE_DATA_SPLIT_COUNT:I = 0x14


# instance fields
.field private bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private connectOverTime:J

.field private context:Landroid/app/Application;

.field private maxConnectCount:I

.field private multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

.field private operateTimeout:I

.field private reConnectCount:I

.field private reConnectInterval:J

.field private splitWriteNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x7

    iput v0, p0, Lcom/clj/fastble/BleManager;->maxConnectCount:I

    .line 61
    const/16 v0, 0x1388

    iput v0, p0, Lcom/clj/fastble/BleManager;->operateTimeout:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/clj/fastble/BleManager;->reConnectCount:I

    .line 63
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/clj/fastble/BleManager;->reConnectInterval:J

    .line 64
    const/16 v0, 0x14

    iput v0, p0, Lcom/clj/fastble/BleManager;->splitWriteNum:I

    .line 65
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/clj/fastble/BleManager;->connectOverTime:J

    return-void
.end method

.method public static getInstance()Lcom/clj/fastble/BleManager;
    .locals 1

    .line 68
    invoke-static {}, Lcom/clj/fastble/BleManager$BleManagerHolder;->access$000()Lcom/clj/fastble/BleManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .line 385
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->getInstance()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanner;->stopLeScan()V

    .line 386
    return-void
.end method

.method public clearCharacterCallback(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 870
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 871
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->clearCharacterCallback()V

    .line 873
    :cond_0
    return-void
.end method

.method public connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "bleGattCallback"    # Lcom/clj/fastble/callback/BleGattCallback;

    .line 342
    if-eqz p2, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    const-string v0, "Bluetooth not enable!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 348
    new-instance v2, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {v2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lcom/clj/fastble/callback/BleGattCallback;->onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    .line 349
    return-object v1

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 353
    :cond_1
    const-string v0, "Be careful: currentThread is not MainThread!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->w(Ljava/lang/String;)V

    .line 356
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->buildConnectingBle(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 360
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->isAutoConnect()Z

    move-result v1

    .line 361
    .local v1, "autoConnect":Z
    invoke-virtual {v0, p1, v1, p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    return-object v2

    .line 357
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local v1    # "autoConnect":Z
    :cond_4
    :goto_0
    new-instance v0, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "Not Found Device Exception Occurred!"

    invoke-direct {v0, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/clj/fastble/callback/BleGattCallback;->onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    .line 364
    return-object v1

    .line 343
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleGattCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "bleGattCallback"    # Lcom/clj/fastble/callback/BleGattCallback;

    .line 375
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 376
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Lcom/clj/fastble/data/BleDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 377
    .local v1, "bleDevice":Lcom/clj/fastble/data/BleDevice;
    invoke-virtual {p0, v1, p2}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    return-object v2
.end method

.method public convertBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 1
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 783
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public convertBleDevice(Landroid/bluetooth/le/ScanResult;)Lcom/clj/fastble/data/BleDevice;
    .locals 13
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 788
    if-eqz p1, :cond_1

    .line 791
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 792
    .local v6, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v7

    .line 793
    .local v7, "rssi":I
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v8

    .line 794
    .local v8, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    const/4 v0, 0x0

    .line 795
    .local v0, "bytes":[B
    if-eqz v8, :cond_0

    .line 796
    invoke-virtual {v8}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 795
    :cond_0
    move-object v9, v0

    .line 797
    .end local v0    # "bytes":[B
    .local v9, "bytes":[B
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v10

    .line 798
    .local v10, "timestampNanos":J
    new-instance v12, Lcom/clj/fastble/data/BleDevice;

    move-object v0, v12

    move-object v1, v6

    move v2, v7

    move-object v3, v9

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    return-object v12

    .line 789
    .end local v6    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "rssi":I
    .end local v8    # "scanRecord":Landroid/bluetooth/le/ScanRecord;
    .end local v9    # "bytes":[B
    .end local v10    # "timestampNanos":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanResult can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->destroy()V

    .line 933
    :cond_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 770
    :cond_0
    return-void
.end method

.method public disconnect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 918
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 921
    :cond_0
    return-void
.end method

.method public disconnectAllDevice()V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->disconnectAllDevice()V

    .line 927
    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 760
    :cond_0
    return-void
.end method

.method public enableLog(Z)Lcom/clj/fastble/BleManager;
    .locals 0
    .param p1, "enable"    # Z

    .line 280
    sput-boolean p1, Lcom/clj/fastble/utils/BleLog;->isPrint:Z

    .line 281
    return-object p0
.end method

.method public getAllConnectedDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    return-object v0

    .line 882
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 802
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    return-object v0

    .line 805
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothGatt(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 809
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 810
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    return-object v1

    .line 812
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBluetoothGattCharacteristics(Landroid/bluetooth/BluetoothGattService;)Ljava/util/List;
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattService;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 824
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothGattServices(Lcom/clj/fastble/data/BleDevice;)Ljava/util/List;
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/clj/fastble/data/BleDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 816
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBluetoothGatt(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 817
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 820
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public getConnectOverTime()J
    .locals 2

    .line 256
    iget-wide v0, p0, Lcom/clj/fastble/BleManager;->connectOverTime:J

    return-wide v0
.end method

.method public getConnectState(Lcom/clj/fastble/data/BleDevice;)I
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 894
    if-eqz p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0

    .line 897
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->context:Landroid/app/Application;

    return-object v0
.end method

.method public getMaxConnectCount()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/clj/fastble/BleManager;->maxConnectCount:I

    return v0
.end method

.method public getMultipleBluetoothController()Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    return-object v0
.end method

.method public getOperateTimeout()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/clj/fastble/BleManager;->operateTimeout:I

    return v0
.end method

.method public getReConnectCount()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/clj/fastble/BleManager;->reConnectCount:I

    return v0
.end method

.method public getReConnectInterval()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/clj/fastble/BleManager;->reConnectInterval:J

    return-wide v0
.end method

.method public getScanRuleConfig()Lcom/clj/fastble/scan/BleScanRuleConfig;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    return-object v0
.end method

.method public getScanSate()Lcom/clj/fastble/data/BleScanState;
    .locals 1

    .line 876
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->getInstance()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanner;->getScanState()Lcom/clj/fastble/data/BleScanState;

    move-result-object v0

    return-object v0
.end method

.method public getSplitWriteNum()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/clj/fastble/BleManager;->splitWriteNum:I

    return v0
.end method

.method public indicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleIndicateCallback;)V
    .locals 6
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_indicate"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 443
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/clj/fastble/BleManager;->indicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcom/clj/fastble/callback/BleIndicateCallback;)V

    .line 444
    return-void
.end method

.method public indicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcom/clj/fastble/callback/BleIndicateCallback;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_indicate"    # Ljava/lang/String;
    .param p4, "useCharacteristicDescriptor"    # Z
    .param p5, "callback"    # Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 460
    if-eqz p5, :cond_1

    .line 464
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 465
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 466
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "This device not connect!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Lcom/clj/fastble/callback/BleIndicateCallback;->onIndicateFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 469
    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 470
    invoke-virtual {v1, p5, p3, p4}, Lcom/clj/fastble/bluetooth/BleConnector;->enableCharacteristicIndicate(Lcom/clj/fastble/callback/BleIndicateCallback;Ljava/lang/String;Z)V

    .line 472
    :goto_0
    return-void

    .line 461
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleIndicateCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .line 76
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->context:Landroid/app/Application;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 77
    iput-object p1, p0, Lcom/clj/fastble/BleManager;->context:Landroid/app/Application;

    .line 78
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->isSupportBle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->context:Landroid/app/Application;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 81
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    new-instance v0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-direct {v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    .line 83
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    .line 85
    :cond_1
    return-void
.end method

.method public initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/clj/fastble/scan/BleScanRuleConfig;

    .line 138
    iput-object p1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    .line 139
    return-void
.end method

.method public isBlueEnable()Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 902
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getConnectState(Lcom/clj/fastble/data/BleDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 906
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 907
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/data/BleDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/data/BleDevice;

    .line 908
    .local v2, "bleDevice":Lcom/clj/fastble/data/BleDevice;
    if-eqz v2, :cond_0

    .line 909
    invoke-virtual {v2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 910
    const/4 v1, 0x1

    return v1

    .line 913
    .end local v2    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :cond_0
    goto :goto_0

    .line 914
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isSupportBle()Z
    .locals 2

    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/clj/fastble/BleManager;->context:Landroid/app/Application;

    .line 750
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 749
    :goto_0
    return v0
.end method

.method public notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 6
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_notify"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 400
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcom/clj/fastble/callback/BleNotifyCallback;)V

    .line 401
    return-void
.end method

.method public notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_notify"    # Ljava/lang/String;
    .param p4, "useCharacteristicDescriptor"    # Z
    .param p5, "callback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 417
    if-eqz p5, :cond_1

    .line 421
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 422
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 423
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "This device not connect!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Lcom/clj/fastble/callback/BleNotifyCallback;->onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 426
    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 427
    invoke-virtual {v1, p5, p3, p4}, Lcom/clj/fastble/bluetooth/BleConnector;->enableCharacteristicNotify(Lcom/clj/fastble/callback/BleNotifyCallback;Ljava/lang/String;Z)V

    .line 429
    :goto_0
    return-void

    .line 418
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleNotifyCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_read"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/clj/fastble/callback/BleReadCallback;

    .line 653
    if-eqz p4, :cond_1

    .line 657
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 658
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 659
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "This device is not connected!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/clj/fastble/callback/BleReadCallback;->onReadFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 662
    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 663
    invoke-virtual {v1, p4, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->readCharacteristic(Lcom/clj/fastble/callback/BleReadCallback;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 654
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleReadCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRssi(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleRssiCallback;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "callback"    # Lcom/clj/fastble/callback/BleRssiCallback;

    .line 675
    if-eqz p2, :cond_1

    .line 679
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 680
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 681
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "This device is not connected!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/clj/fastble/callback/BleRssiCallback;->onRssiFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/clj/fastble/bluetooth/BleConnector;->readRemoteRssi(Lcom/clj/fastble/callback/BleRssiCallback;)V

    .line 685
    :goto_0
    return-void

    .line 676
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleRssiCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeConnectGattCallback(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 828
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 829
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeConnectGattCallback()V

    .line 831
    :cond_0
    return-void
.end method

.method public removeIndicateCallback(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_indicate"    # Ljava/lang/String;

    .line 852
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 853
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0, p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeIndicateCallback(Ljava/lang/String;)V

    .line 855
    :cond_0
    return-void
.end method

.method public removeMtuChangedCallback(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 840
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 841
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeMtuChangedCallback()V

    .line 843
    :cond_0
    return-void
.end method

.method public removeNotifyCallback(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_notify"    # Ljava/lang/String;

    .line 846
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 847
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0, p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeNotifyCallback(Ljava/lang/String;)V

    .line 849
    :cond_0
    return-void
.end method

.method public removeReadCallback(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_read"    # Ljava/lang/String;

    .line 864
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 865
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0, p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeReadCallback(Ljava/lang/String;)V

    .line 867
    :cond_0
    return-void
.end method

.method public removeRssiCallback(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 834
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 835
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeRssiCallback()V

    .line 837
    :cond_0
    return-void
.end method

.method public removeWriteCallback(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_write"    # Ljava/lang/String;

    .line 858
    invoke-virtual {p0, p1}, Lcom/clj/fastble/BleManager;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 859
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeWriteCallback(Ljava/lang/String;)V

    .line 861
    :cond_0
    return-void
.end method

.method public requestConnectionPriority(Lcom/clj/fastble/data/BleDevice;I)Z
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "connectionPriority"    # I

    .line 732
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 733
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 734
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 735
    return v1

    .line 737
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/clj/fastble/bluetooth/BleConnector;->requestConnectionPriority(I)Z

    move-result v1

    return v1

    .line 740
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_1
    return v1
.end method

.method public scan(Lcom/clj/fastble/callback/BleScanCallback;)V
    .locals 14
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleScanCallback;

    .line 290
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "Bluetooth not enable!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/callback/BleScanCallback;->onScanStarted(Z)V

    .line 297
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getServiceUuids()[Ljava/util/UUID;

    move-result-object v0

    .line 301
    .local v0, "serviceUuids":[Ljava/util/UUID;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getDeviceNames()[Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "deviceNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getDeviceMac()Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "deviceMac":Ljava/lang/String;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->isFuzzy()Z

    move-result v11

    .line 304
    .local v11, "fuzzy":Z
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getScanTimeOut()J

    move-result-wide v12

    .line 306
    .local v12, "timeOut":J
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->getInstance()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v1

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-wide v6, v12

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/clj/fastble/scan/BleScanner;->scan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcom/clj/fastble/callback/BleScanCallback;)V

    .line 307
    return-void

    .line 291
    .end local v0    # "serviceUuids":[Ljava/util/UUID;
    .end local v9    # "deviceNames":[Ljava/lang/String;
    .end local v10    # "deviceMac":Ljava/lang/String;
    .end local v11    # "fuzzy":Z
    .end local v12    # "timeOut":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleScanCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanAndConnect(Lcom/clj/fastble/callback/BleScanAndConnectCallback;)V
    .locals 14
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleScanAndConnectCallback;

    .line 315
    if-eqz p1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "Bluetooth not enable!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/callback/BleScanAndConnectCallback;->onScanStarted(Z)V

    .line 322
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getServiceUuids()[Ljava/util/UUID;

    move-result-object v0

    .line 326
    .local v0, "serviceUuids":[Ljava/util/UUID;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getDeviceNames()[Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "deviceNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getDeviceMac()Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "deviceMac":Ljava/lang/String;
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->isFuzzy()Z

    move-result v11

    .line 329
    .local v11, "fuzzy":Z
    iget-object v1, p0, Lcom/clj/fastble/BleManager;->bleScanRuleConfig:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->getScanTimeOut()J

    move-result-wide v12

    .line 331
    .local v12, "timeOut":J
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->getInstance()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v1

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-wide v6, v12

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/clj/fastble/scan/BleScanner;->scanAndConnect([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcom/clj/fastble/callback/BleScanAndConnectCallback;)V

    .line 332
    return-void

    .line 316
    .end local v0    # "serviceUuids":[Ljava/util/UUID;
    .end local v9    # "deviceNames":[Ljava/lang/String;
    .end local v10    # "deviceMac":Ljava/lang/String;
    .end local v11    # "fuzzy":Z
    .end local v12    # "timeOut":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleScanAndConnectCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectOverTime(J)Lcom/clj/fastble/BleManager;
    .locals 3
    .param p1, "time"    # J

    .line 266
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 267
    const-wide/16 p1, 0x64

    .line 269
    :cond_0
    iput-wide p1, p0, Lcom/clj/fastble/BleManager;->connectOverTime:J

    .line 270
    return-object p0
.end method

.method public setMaxConnectCount(I)Lcom/clj/fastble/BleManager;
    .locals 1
    .param p1, "count"    # I

    .line 157
    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    .line 158
    const/4 p1, 0x7

    .line 159
    :cond_0
    iput p1, p0, Lcom/clj/fastble/BleManager;->maxConnectCount:I

    .line 160
    return-object p0
.end method

.method public setMtu(Lcom/clj/fastble/data/BleDevice;ILcom/clj/fastble/callback/BleMtuChangedCallback;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "mtu"    # I
    .param p3, "callback"    # Lcom/clj/fastble/callback/BleMtuChangedCallback;

    .line 697
    if-eqz p3, :cond_3

    .line 701
    const/16 v0, 0x200

    if-le p2, v0, :cond_0

    .line 702
    const-string v0, "requiredMtu should lower than 512 !"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 703
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {v1, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 704
    return-void

    .line 707
    :cond_0
    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    .line 708
    const-string v0, "requiredMtu should higher than 23 !"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 709
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {v1, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 710
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 714
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_2

    .line 715
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "This device is not connected!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->setMtu(ILcom/clj/fastble/callback/BleMtuChangedCallback;)V

    .line 719
    :goto_0
    return-void

    .line 698
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleMtuChangedCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOperateTimeout(I)Lcom/clj/fastble/BleManager;
    .locals 0
    .param p1, "count"    # I

    .line 179
    iput p1, p0, Lcom/clj/fastble/BleManager;->operateTimeout:I

    .line 180
    return-object p0
.end method

.method public setReConnectCount(I)Lcom/clj/fastble/BleManager;
    .locals 2
    .param p1, "count"    # I

    .line 208
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/clj/fastble/BleManager;->setReConnectCount(IJ)Lcom/clj/fastble/BleManager;

    move-result-object v0

    return-object v0
.end method

.method public setReConnectCount(IJ)Lcom/clj/fastble/BleManager;
    .locals 3
    .param p1, "count"    # I
    .param p2, "interval"    # J

    .line 218
    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 219
    const/16 p1, 0xa

    .line 220
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 221
    const-wide/16 p2, 0x0

    .line 222
    :cond_1
    iput p1, p0, Lcom/clj/fastble/BleManager;->reConnectCount:I

    .line 223
    iput-wide p2, p0, Lcom/clj/fastble/BleManager;->reConnectInterval:J

    .line 224
    return-object p0
.end method

.method public setSplitWriteNum(I)Lcom/clj/fastble/BleManager;
    .locals 0
    .param p1, "num"    # I

    .line 244
    if-lez p1, :cond_0

    .line 245
    iput p1, p0, Lcom/clj/fastble/BleManager;->splitWriteNum:I

    .line 247
    :cond_0
    return-object p0
.end method

.method public stopIndicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_indicate"    # Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/clj/fastble/BleManager;->stopIndicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopIndicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_indicate"    # Ljava/lang/String;
    .param p4, "useCharacteristicDescriptor"    # Z

    .line 541
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 542
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 543
    const/4 v1, 0x0

    return v1

    .line 545
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 546
    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 547
    invoke-virtual {v1, p4}, Lcom/clj/fastble/bluetooth/BleConnector;->disableCharacteristicIndicate(Z)Z

    move-result v1

    .line 548
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v0, p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeIndicateCallback(Ljava/lang/String;)V

    .line 551
    :cond_1
    return v1
.end method

.method public stopNotify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_notify"    # Ljava/lang/String;

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/clj/fastble/BleManager;->stopNotify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopNotify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_notify"    # Ljava/lang/String;
    .param p4, "useCharacteristicDescriptor"    # Z

    .line 501
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 502
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v0, :cond_0

    .line 503
    const/4 v1, 0x0

    return v1

    .line 505
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 506
    invoke-virtual {v1, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v1

    .line 507
    invoke-virtual {v1, p4}, Lcom/clj/fastble/bluetooth/BleConnector;->disableCharacteristicNotify(Z)Z

    move-result v1

    .line 508
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v0, p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeNotifyCallback(Ljava/lang/String;)V

    .line 511
    :cond_1
    return v1
.end method

.method public write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 7
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_write"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 568
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    .line 569
    return-void
.end method

.method public write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 10
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_write"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "split"    # Z
    .param p6, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 588
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcom/clj/fastble/callback/BleWriteCallback;)V

    .line 589
    return-void
.end method

.method public write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 15
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "uuid_service"    # Ljava/lang/String;
    .param p3, "uuid_write"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "split"    # Z
    .param p6, "sendNextWhenLastSuccess"    # Z
    .param p7, "intervalBetweenTwoPackage"    # J
    .param p9, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 612
    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    if-eqz v11, :cond_4

    .line 616
    if-nez v10, :cond_0

    .line 617
    const-string v0, "data is Null!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 618
    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {v1, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 619
    return-void

    .line 622
    :cond_0
    array-length v0, v10

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    if-nez p5, :cond_1

    .line 623
    const-string v0, "Be careful: data\'s length beyond 20! Ensure MTU higher than 23, or use spilt write!"

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->w(Ljava/lang/String;)V

    .line 626
    :cond_1
    move-object v12, p0

    iget-object v0, v12, Lcom/clj/fastble/BleManager;->multipleBluetoothController:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v14

    .line 627
    .local v14, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-nez v14, :cond_2

    .line 628
    new-instance v0, Lcom/clj/fastble/exception/OtherException;

    const-string v1, "This device not connect!"

    invoke-direct {v0, v1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    move-object/from16 v1, p2

    goto :goto_0

    .line 630
    :cond_2
    if-eqz p5, :cond_3

    array-length v0, v10

    invoke-virtual {p0}, Lcom/clj/fastble/BleManager;->getSplitWriteNum()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 631
    new-instance v0, Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-direct {v0}, Lcom/clj/fastble/bluetooth/SplitWriter;-><init>()V

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/clj/fastble/bluetooth/SplitWriter;->splitWrite(Lcom/clj/fastble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcom/clj/fastble/callback/BleWriteCallback;)V

    move-object/from16 v1, p2

    goto :goto_0

    .line 634
    :cond_3
    invoke-virtual {v14}, Lcom/clj/fastble/bluetooth/BleBluetooth;->newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v0

    .line 635
    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/clj/fastble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v10, v11, v9}, Lcom/clj/fastble/bluetooth/BleConnector;->writeCharacteristic([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    .line 639
    :goto_0
    return-void

    .line 613
    .end local v14    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_4
    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "BleWriteCallback can not be Null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
