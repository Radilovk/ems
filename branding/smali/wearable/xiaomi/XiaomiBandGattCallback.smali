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

    .line 127
    const-string v0, "00000053-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static charUploadUuid()Ljava/lang/String;
    .registers 1

    .line 131
    const-string v0, "00000055-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    .line 116
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    .line 120
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 121
    :catchall_f
    move-exception p0

    .line 122
    return-object v0

    .line 117
    :cond_11
    :goto_11
    return-object v0
.end method

.method private static shortCharLabel(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 3

    .line 135
    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4f

    .line 138
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, "00000051"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 140
    const-string p0, "51"

    return-object p0

    .line 142
    :cond_20
    const-string v0, "00000052"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 143
    const-string p0, "52"

    return-object p0

    .line 145
    :cond_2b
    const-string v0, "00000053"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 146
    const-string p0, "53"

    return-object p0

    .line 148
    :cond_36
    const-string v0, "00000055"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 149
    const-string p0, "55"

    return-object p0

    .line 151
    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4e

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4e
    return-object p0

    .line 136
    :cond_4f
    :goto_4f
    const-string p0, "??"

    return-object p0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 87
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 88
    if-eqz p1, :cond_3c

    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_3c

    .line 91
    :cond_a
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->shortCharLabel(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notify"

    invoke-virtual {v1, v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/16 v2, 0x18

    invoke-virtual {v1, v3, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 95
    return-void

    .line 89
    :cond_3c
    :goto_3c
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 100
    if-eqz p3, :cond_1a

    .line 101
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

    .line 103
    :cond_1a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 104
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .line 30
    const-string v0, "gatt"

    const/4 v1, 0x2

    if-ne p3, v1, :cond_4b

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

    if-lt p2, p3, :cond_2e

    .line 34
    const/4 p2, 0x1

    :try_start_22
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 37
    goto :goto_2e

    .line 35
    :catchall_26
    move-exception p2

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "conn_priority"

    invoke-virtual {v0, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_2e
    :goto_2e
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_45

    .line 41
    :try_start_32
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleMtuFallback(Landroid/bluetooth/BluetoothGatt;)V

    .line 42
    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    .line 43
    return-void

    .line 44
    :catchall_3d
    move-exception p2

    .line 45
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v0, "mtu_request"

    invoke-virtual {p3, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_45
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    .line 49
    return-void

    .line 51
    :cond_4b
    if-nez p3, :cond_68

    .line 52
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected status="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattDisconnected()V

    .line 55
    :cond_68
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 5

    .line 109
    if-eqz p3, :cond_1a

    .line 110
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

    .line 112
    :cond_1a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 113
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 60
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 6

    .line 64
    if-eqz p2, :cond_22

    .line 65
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

    .line 66
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "service_fail"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_22
    const-string p2, "0000fe95-0000-1000-8000-00805f9b34fb"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 70
    if-nez p2, :cond_36

    .line 71
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_fe95"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 72
    return-void

    .line 74
    :cond_36
    const-string v0, "00000051-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 75
    const-string v1, "00000052-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 76
    if-eqz v0, :cond_5a

    if-nez v1, :cond_4f

    goto :goto_5a

    .line 80
    :cond_4f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 81
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V

    .line 82
    return-void

    .line 77
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string p2, "no_chars"

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 78
    return-void
.end method
