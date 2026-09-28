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

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 26
    return-void
.end method

.method static charActivityUuid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    const-string v0, "00000053-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static charUploadUuid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    const-string v0, "00000055-0000-1000-8000-00805f9b34fb"

    return-object v0
.end method

.method static findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 116
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 122
    :cond_5
    :goto_5
    return-object v0

    .line 120
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_5

    .line 121
    :catch_f
    move-exception v1

    goto :goto_5
.end method

.method private static shortCharLabel(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 135
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_d

    .line 136
    :cond_a
    const-string v0, "??"

    .line 151
    :cond_c
    :goto_c
    return-object v0

    .line 138
    :cond_d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "00000051"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 140
    const-string v0, "51"

    goto :goto_c

    .line 142
    :cond_24
    const-string v1, "00000052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 143
    const-string v0, "52"

    goto :goto_c

    .line 145
    :cond_2f
    const-string v1, "00000053"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 146
    const-string v0, "53"

    goto :goto_c

    .line 148
    :cond_3a
    const-string v1, "00000055"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 149
    const-string v0, "55"

    goto :goto_c

    .line 151
    :cond_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_c

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 88
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_a

    .line 95
    :cond_9
    :goto_9
    return-void

    .line 91
    :cond_a
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->shortCharLabel(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v3, "notify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v3, "notify"

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 94
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v2, v1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    goto :goto_9
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 8

    .prologue
    .line 100
    if-eqz p3, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "char_write_fail status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 104
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 9

    .prologue
    const/16 v4, 0x15

    .line 30
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4d

    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_27

    .line 34
    const/4 v0, 0x1

    :try_start_24
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_36

    .line 39
    :cond_27
    :goto_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_47

    .line 41
    :try_start_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleMtuFallback(Landroid/bluetooth/BluetoothGatt;)V

    .line 42
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_35} :catch_3f

    .line 55
    :cond_35
    :goto_35
    return-void

    .line 35
    :catch_36
    move-exception v0

    .line 36
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "conn_priority"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 44
    :catch_3f
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "mtu_request"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattConnected(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_35

    .line 51
    :cond_4d
    if-nez p3, :cond_35

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnected status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattDisconnected()V

    goto :goto_35
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 8

    .prologue
    .line 109
    if-eqz p3, :cond_1c

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desc_write_fail status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattWriteDone()V

    .line 113
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 60
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 7

    .prologue
    .line 64
    if-eqz p2, :cond_24

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_fail status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "service_fail"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    .line 82
    :goto_23
    return-void

    .line 69
    :cond_24
    const-string v0, "0000fe95-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 70
    if-nez v0, :cond_38

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "no_fe95"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    goto :goto_23

    .line 74
    :cond_38
    const-string v1, "00000051-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 75
    const-string v2, "00000052-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 76
    if-eqz v1, :cond_50

    if-nez v2, :cond_58

    .line 77
    :cond_50
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "no_chars"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattState(Ljava/lang/String;)V

    goto :goto_23

    .line 80
    :cond_58
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v3, p1, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 81
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_23
.end method
