.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;
.super Ljava/lang/Object;
.source "XiaomiBandWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;,
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
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;",
            ">;"
        }
    .end annotation
.end field

.field private waitingBandAck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 3

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

    .line 14
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-object v0
.end method

.method private pollNextOp()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;
    .registers 4

    .line 101
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    .line 103
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-nez v2, :cond_1c

    goto :goto_1f

    .line 101
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    return-object v1

    .line 108
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private pump()V
    .registers 8

    .line 112
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_58

    .line 115
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pollNextOp()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    move-result-object v0

    .line 116
    if-nez v0, :cond_14

    .line 117
    return-void

    .line 119
    :cond_14
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 121
    if-eqz v1, :cond_57

    if-nez v2, :cond_25

    goto :goto_57

    .line 124
    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 126
    const/4 v4, 0x0

    :try_start_29
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v5

    .line 127
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-interface {v0, v1, v2, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 128
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 129
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 130
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 131
    return-void

    .line 133
    :cond_3d
    if-eqz v5, :cond_46

    .line 134
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleBandAckTimeout()V
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_47

    .line 142
    :cond_46
    goto :goto_56

    .line 137
    :catchall_47
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "write_queue"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 140
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 141
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 143
    :goto_56
    return-void

    .line 122
    :cond_57
    :goto_57
    return-void

    .line 113
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 29
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 30
    return-void
.end method

.method enqueueAck([B)V
    .registers 3

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 34
    return-void
.end method

.method enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 6

    .line 41
    if-nez p2, :cond_3

    .line 42
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

    .line 46
    return-void
.end method

.method enqueueCommand([B)V
    .registers 6

    .line 49
    if-nez p1, :cond_3

    .line 50
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

    .line 54
    return-void
.end method

.method enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 57
    if-eqz p1, :cond_13

    if-nez p2, :cond_5

    goto :goto_13

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 62
    return-void

    .line 58
    :cond_13
    :goto_13
    return-void
.end method

.method enqueueRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .line 65
    if-nez p1, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 70
    return-void
.end method

.method isWaitingBandAck()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    return v0
.end method

.method onBandAck()V
    .registers 2

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

    .line 82
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 83
    return v1

    .line 85
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 86
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method onWriteFinished()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 97
    return-void
.end method
