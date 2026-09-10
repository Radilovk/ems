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

    .line 178
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V

    .line 254
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 243
    if-nez p3, :cond_0

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V

    .line 248
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 180
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 182
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 183
    const-string v0, "Connected to GATT server."

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 184
    const-string v0, "Attempting to start service discovery"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 186
    :cond_0
    if-nez p3, :cond_6

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 188
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-nez v0, :cond_3

    .line 189
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_1

    .line 195
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    goto :goto_2

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect gatt map : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 200
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$500(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 205
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 207
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event ==========  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Disconnected from GATT server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 209
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_6
    :goto_3
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 256
    if-nez p3, :cond_0

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v0, v1, p2}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onReadRemoteRSSI(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadRemoteRssi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  rssi  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 211
    if-nez p2, :cond_5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contain gatt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   disconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 216
    if-nez v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 220
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    goto :goto_1

    .line 223
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 226
    const-string v1, "onServicesDiscovered  model null"

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

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

    move-object v0, v1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$600(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delegate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V

    .line 236
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_4
    goto :goto_2

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServicesDiscovered received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 239
    :goto_2
    return-void
.end method
