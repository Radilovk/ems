.class final Lcom/isaigu/gymapp/train/ble/BleDeviceManager$2;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "BleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$2;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "exception"    # Lcom/clj/fastble/exception/BleException;

    .line 222
    invoke-static {p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$2;->val$mac:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "status"    # I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "isActiveDisConnected"    # Z
    .param p2, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p3, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p4, "status"    # I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u65ad\u5f00\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    .line 218
    return-void
.end method
