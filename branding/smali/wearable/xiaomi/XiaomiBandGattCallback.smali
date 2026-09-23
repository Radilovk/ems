.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "XiaomiBandGattCallback.java"


# static fields
.field private static final CCCD:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field private static final CHAR_READ:Ljava/lang/String; = "00000051-0000-1000-8000-00805f9b34fb"

.field private static final CHAR_WRITE:Ljava/lang/String; = "00000052-0000-1000-8000-00805f9b34fb"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000fe95-0000-1000-8000-00805f9b34fb"


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 24
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 68
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 69
    if-eqz p1, :cond_15

    array-length p2, p1

    if-nez p2, :cond_a

    goto :goto_15

    .line 72
    :cond_a
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattNotify([B)V

    .line 73
    return-void

    .line 70
    :cond_15
    :goto_15
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 79
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 28
    const/4 p2, 0x2

    if-ne p3, p2, :cond_9

    .line 29
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    .line 30
    return-void

    .line 32
    :cond_9
    if-nez p3, :cond_10

    .line 33
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattDisconnected()V

    .line 35
    :cond_10
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    .line 39
    if-eqz p2, :cond_a

    .line 40
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "service_fail"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_a
    const-string p2, "0000fe95-0000-1000-8000-00805f9b34fb"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 44
    if-nez p2, :cond_1e

    .line 45
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_fe95"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_1e
    const-string v0, "00000051-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 49
    const-string v1, "00000052-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 50
    if-eqz v0, :cond_61

    if-nez p2, :cond_37

    goto :goto_61

    .line 54
    :cond_37
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1, p1, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 55
    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 56
    const-string p2, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    .line 57
    if-eqz p2, :cond_54

    .line 58
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 59
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 61
    :cond_54
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "auth_start"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattSendAuthNonce()V

    .line 63
    return-void

    .line 51
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_chars"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 52
    return-void
.end method
