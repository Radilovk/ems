.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;
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
    name = "BytesOp"
.end annotation


# instance fields
.field private final command:Z

.field private final frame:[B


# direct methods
.method constructor <init>([BZ)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;->frame:[B

    .line 134
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;->command:Z

    .line 135
    return-void
.end method


# virtual methods
.method public execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;->frame:[B

    invoke-virtual {p3, p1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result p1

    return p1
.end method

.method public needsBandAck()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;->command:Z

    return v0
.end method
