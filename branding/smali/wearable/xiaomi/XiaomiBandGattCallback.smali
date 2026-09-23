.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "XiaomiBandGattCallback.java"


# static fields
.field private static final CHAR_ACTIVITY:Ljava/lang/String; = "00000053-0000-1000-8000-00805f9b34fb"

.field private static final CHAR_READ:Ljava/lang/String; = "00000051-0000-1000-8000-00805f9b34fb"

.field private static final CHAR_UPLOAD:Ljava/lang/String; = "00000055-0000-1000-8000-00805f9b34fb"

.field private static final CHAR_WRITE:Ljava/lang/String; = "00000052-0000-1000-8000-00805f9b34fb"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000fe95-0000-1000-8000-00805f9b34fb"


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 26
    return-void
.end method

.method static charActivityUuid()Ljava/lang/String;
    .registers 1

    .line 118
    const-string v0, "00000053-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static charUploadUuid()Ljava/lang/String;
    .registers 1

    .line 122
    const-string v0, "00000055-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    .line 107
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    .line 111
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 112
    :catchall_f
    move-exception p0

    .line 113
    return-object v0

    .line 108
    :cond_11
    :goto_11
    return-object v0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 80
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 81
    if-eqz p1, :cond_1e

    array-length p2, p1

    if-nez p2, :cond_a

    goto :goto_1e

    .line 84
    :cond_a
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/16 v0, 0x18

    const-string v1, "notify"

    invoke-virtual {p2, v1, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 85
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattNotify([B)V

    .line 86
    return-void

    .line 82
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 91
    if-eqz p3, :cond_1a

    .line 92
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "char_write_fail status="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gatt"

    invoke-virtual {p1, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 95
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .line 30
    const-string v0, "gatt"

    const/4 v1, 0x2

    if-ne p3, v1, :cond_35

    .line 31
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_2f

    .line 34
    const/16 p2, 0x200

    :try_start_23
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    .line 35
    return-void

    .line 36
    :catchall_27
    move-exception p2

    .line 37
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v0, "mtu_request"

    invoke-virtual {p3, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_2f
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    .line 41
    return-void

    .line 43
    :cond_35
    if-nez p3, :cond_52

    .line 44
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected status="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattDisconnected()V

    .line 47
    :cond_52
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 5

    .line 100
    if-eqz p3, :cond_1a

    .line 101
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "desc_write_fail status="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gatt"

    invoke-virtual {p1, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 104
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gatt"

    invoke-virtual {v0, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    .line 53
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 6

    .line 57
    if-eqz p2, :cond_22

    .line 58
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_fail status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gatt"

    invoke-virtual {p1, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "service_fail"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 60
    return-void

    .line 62
    :cond_22
    const-string p2, "0000fe95-0000-1000-8000-00805f9b34fb"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 63
    if-nez p2, :cond_36

    .line 64
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_fe95"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_36
    const-string v0, "00000051-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 68
    const-string v1, "00000052-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 69
    if-eqz v0, :cond_5a

    if-nez v1, :cond_4f

    goto :goto_5a

    .line 73
    :cond_4f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 74
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V

    .line 75
    return-void

    .line 70
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_chars"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 71
    return-void
.end method
