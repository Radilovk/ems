.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;
.super Ljava/lang/Object;
.source "XiaomiBandWriteQueue.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotifyOp"
.end annotation


# instance fields
.field private final characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 181
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 182
    return-void
.end method


# virtual methods
.method public execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 193
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_32

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->access$000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 199
    if-nez v1, :cond_39

    .line 200
    const-string v1, "notify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no CCCD on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_31
    return v0

    .line 194
    :catch_32
    move-exception v1

    .line 195
    const-string v2, "notify_enable"

    invoke-virtual {p3, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 204
    :cond_39
    :try_start_39
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 205
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_41} :catch_43

    move-result v0

    goto :goto_31

    .line 206
    :catch_43
    move-exception v1

    .line 207
    const-string v2, "notify_cccd"

    invoke-virtual {p3, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method public needsBandAck()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
