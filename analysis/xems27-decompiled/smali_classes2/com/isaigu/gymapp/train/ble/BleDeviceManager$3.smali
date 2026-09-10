.class final Lcom/isaigu/gymapp/train/ble/BleDeviceManager$3;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "BleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/ble/BleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 0
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "exception"    # Lcom/clj/fastble/exception/BleException;

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$200()V

    .line 259
    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "status"    # I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "www"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$300(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    .line 266
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$200()V

    .line 267
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 268
    .local v3, "sevice":Landroid/bluetooth/BluetoothGattService;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v3    # "sevice":Landroid/bluetooth/BluetoothGattService;
    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "isActiveDisConnected"    # Z
    .param p2, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p3, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p4, "status"    # I

    .line 276
    invoke-static {p2}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$400(Lcom/clj/fastble/data/BleDevice;)V

    .line 278
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    .line 252
    return-void
.end method
