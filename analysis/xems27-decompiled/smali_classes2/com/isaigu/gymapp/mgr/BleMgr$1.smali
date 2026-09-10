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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginScan()V
    .locals 1

    .line 79
    const/16 v0, 0x3f4

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 80
    return-void
.end method

.method public onBleStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .line 76
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3f3

    invoke-direct {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 77
    return-void
.end method

.method public onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 69
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 70
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 71
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 74
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 65
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v1, 0x3f1

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    .line 66
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 67
    return-void
.end method

.method public onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
    .locals 2
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "type"    # I

    .line 60
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    .line 61
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/isaigu/gymapp/message/DataBundle;->setInt(Ljava/lang/String;I)V

    .line 62
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 63
    return-void
.end method

.method public onDeviceDiscovered(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I
    .param p3, "serviceUUID"    # Ljava/lang/String;
    .param p4, "manufacturerData"    # [B

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 42
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 43
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v1, "serviceUUID"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v1, "manufacturerData"

    invoke-virtual {v0, v1, p4}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 48
    return-void
.end method

.method public onDeviceDiscoveredUpdate(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I
    .param p3, "serviceUUID"    # Ljava/lang/String;
    .param p4, "manufacturerData"    # [B

    .line 51
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 52
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 53
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v1, "serviceUUID"

    invoke-virtual {v0, v1, p3}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v1, "manufacturerData"

    invoke-virtual {v0, v1, p4}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 58
    return-void
.end method

.method public onReadRemoteRSSI(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
    .locals 3
    .param p1, "model"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .param p2, "rssi"    # I

    .line 33
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 34
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 35
    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 38
    return-void
.end method

.method public onStopScan()V
    .locals 1

    .line 30
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 31
    return-void
.end method
