.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;
.super Ljava/lang/Object;
.source "XiaomiBandWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;
    }
.end annotation


# static fields
.field private static final CCCD:Ljava/util/UUID;


# instance fields
.field private busy:Z

.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;",
            ">;"
        }
    .end annotation
.end field

.field private waitingBandAck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 24
    return-void
.end method

.method static synthetic access$000()Ljava/util/UUID;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-object v0
.end method

.method private pollNextOp()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;
    .registers 4

    .prologue
    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    .line 103
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-nez v2, :cond_22

    .line 104
    :cond_1c
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    :goto_21
    return-object v0

    .line 101
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 108
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private pump()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 143
    :cond_e
    :goto_e
    return-void

    .line 115
    :cond_f
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pollNextOp()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_e

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 121
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 124
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 126
    :try_start_27
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v3

    .line 127
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-interface {v0, v1, v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 130
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3c} :catch_3d

    goto :goto_e

    .line 137
    :catch_3d
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "write_queue"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 140
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 141
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    goto :goto_e

    .line 133
    :cond_4d
    if-eqz v3, :cond_e

    .line 134
    const/4 v0, 0x1

    :try_start_50
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleBandAckTimeout()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_57} :catch_3d

    goto :goto_e
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 29
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 30
    return-void
.end method

.method enqueueAck([B)V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 34
    return-void
.end method

.method enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 6

    .prologue
    .line 41
    if-nez p2, :cond_3

    .line 46
    :goto_2
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;-><init>([BZLandroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    goto :goto_2
.end method

.method enqueueCommand([B)V
    .registers 6

    .prologue
    .line 49
    if-nez p1, :cond_3

    .line 54
    :goto_2
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;-><init>([BZLandroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    goto :goto_2
.end method

.method enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .prologue
    .line 57
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 62
    :cond_4
    :goto_4
    return-void

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    goto :goto_4
.end method

.method enqueueRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 65
    if-nez p1, :cond_3

    .line 70
    :goto_2
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    goto :goto_2
.end method

.method isWaitingBandAck()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    return v0
.end method

.method onBandAck()V
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-eqz v0, :cond_f

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 76
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 78
    :cond_f
    return-void
.end method

.method onBandAckTimeout()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-nez v1, :cond_6

    .line 87
    :goto_5
    return v0

    .line 85
    :cond_6
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 86
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 87
    const/4 v0, 0x1

    goto :goto_5
.end method

.method onWriteFinished()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 97
    return-void
.end method
