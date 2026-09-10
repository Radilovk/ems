.class final Lcom/isaigu/gymapp/mgr/BleMgr$1;
.super Ljava/lang/Object;
.source "BleMgr.java"

# interfaces
.implements Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/BleMgr;->initBle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginScan()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x3f4

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 79
    return-void
.end method

.method public onBleStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 75
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v1, 0x3f3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 76
    return-void
.end method

.method public onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 68
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 69
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 70
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 73
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .prologue
    .line 64
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v1, 0x3f1

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    .line 65
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 66
    return-void
.end method

.method public onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "type"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    .line 60
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/isaigu/gymapp/message/DataBundle;->setInt(Ljava/lang/String;I)V

    .line 61
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 62
    return-void
.end method

.method public onDeviceDiscovered(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I
    .param p3, "serviceUUID"    # Ljava/lang/String;
    .param p4, "manufacturerData"    # [B

    .prologue
    .line 40
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 41
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 42
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string v1, "rssi"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v1, "serviceUUID"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v1, "manufacturerData"

    invoke-virtual {v0, v1, p4}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 47
    return-void
.end method

.method public onDeviceDiscoveredUpdate(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I
    .param p3, "serviceUUID"    # Ljava/lang/String;
    .param p4, "manufacturerData"    # [B

    .prologue
    .line 50
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 51
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 52
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v1, "rssi"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v1, "serviceUUID"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v1, "manufacturerData"

    invoke-virtual {v0, v1, p4}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 57
    return-void
.end method

.method public onReadRemoteRSSI(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I

    .prologue
    .line 32
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 33
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 34
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v1, "rssi"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 37
    return-void
.end method

.method public onStopScan()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 30
    return-void
.end method
