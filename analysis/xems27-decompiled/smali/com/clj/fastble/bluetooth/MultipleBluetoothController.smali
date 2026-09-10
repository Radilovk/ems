.class public Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
.super Ljava/lang/Object;
.source "MultipleBluetoothController.java"


# instance fields
.field private final bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/clj/fastble/utils/BleLruHashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private final bleTempHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getMaxConnectCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized addBleBluetooth(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 2
    .param p1, "bleBluetooth"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter p0

    .line 46
    if-nez p1, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/clj/fastble/utils/BleLruHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_1
    monitor-exit p0

    return-void

    .line 45
    .end local p1    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized buildConnectingBle(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    monitor-enter p0

    .line 29
    :try_start_0
    new-instance v0, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-direct {v0, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 30
    .local v0, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 28
    .end local v0    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/utils/BleLruHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->destroy()V

    .line 96
    .end local v1    # "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    goto :goto_0

    .line 97
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/utils/BleLruHashMap;->clear()V

    .line 98
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .restart local v1    # "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->destroy()V

    .line 100
    .end local v1    # "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    goto :goto_1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->isContainDevice(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnectAllDevice()V
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/utils/BleLruHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnect()V

    .line 89
    .end local v1    # "stringBleBluetoothEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    goto :goto_0

    .line 90
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/utils/BleLruHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleBluetooth(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    monitor-enter p0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/bluetooth/BleBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 77
    .restart local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getBleBluetoothList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v1}, Lcom/clj/fastble/utils/BleLruHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v0, "bleBluetoothList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    new-instance v1, Lcom/clj/fastble/bluetooth/MultipleBluetoothController$1;

    invoke-direct {v1, p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController$1;-><init>(Lcom/clj/fastble/bluetooth/MultipleBluetoothController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0    # "bleBluetoothList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->refreshConnectedDevice()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/data/BleDevice;>;"
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 119
    .local v2, "BleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v2    # "BleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    monitor-exit p0

    return-object v0

    .line 115
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/data/BleDevice;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isContainDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 68
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    .end local p1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 68
    .restart local p1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isContainDevice(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    monitor-enter p0

    .line 64
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 64
    .restart local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0
.end method

.method public refreshConnectedDevice()V
    .locals 5

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "bluetoothList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 131
    .local v2, "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-virtual {p0, v2}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->removeBleBluetooth(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    .line 129
    .end local v2    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "bluetoothList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/bluetooth/BleBluetooth;>;"
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized removeBleBluetooth(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 2
    .param p1, "bleBluetooth"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter p0

    .line 55
    if-nez p1, :cond_0

    .line 56
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_1
    monitor-exit p0

    return-void

    .line 54
    .end local p1    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConnectingBle(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 2
    .param p1, "bleBluetooth"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter p0

    .line 37
    if-nez p1, :cond_0

    .line 38
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
    :cond_1
    monitor-exit p0

    return-void

    .line 36
    .end local p1    # "bleBluetooth":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
