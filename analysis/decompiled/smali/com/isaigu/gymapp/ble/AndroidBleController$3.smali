.class Lcom/isaigu/gymapp/ble/AndroidBleController$3;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "AndroidBleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/AndroidBleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V

    .line 247
    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$800(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 236
    if-nez p3, :cond_0

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V

    .line 241
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 173
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 176
    const-string v2, "Connected to GATT server."

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 177
    const-string v2, "Attempting to start service discovery"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 179
    :cond_1
    if-nez p3, :goto_0

    .line 180
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 181
    .local v1, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-eqz v1, :cond_clear_notify

    iget-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/MacUtils;->formatBleMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/AndroidBleController;->notifiedAddresses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_clear_notify
    if-nez v1, :cond_6

    .line 182
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 185
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect gatt map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 193
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 196
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_4
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$500(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    .line 197
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 198
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 200
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event ==========  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Disconnected from GATT server."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_6
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 249
    if-nez p3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v1, v0, p2}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onReadRemoteRSSI(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadRemoteRssi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  rssi  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 204
    if-nez p2, :cond_5

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contain gatt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 209
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-nez v1, :cond_1

    .line 210
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 213
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_1
    if-nez v1, :cond_2

    .line 219
    const-string v2, "onServicesDiscovered  model null"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$600(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delegate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$800(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    .line 232
    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :goto_0
    return-void

    .line 230
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServicesDiscovered received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto :goto_0
.end method
