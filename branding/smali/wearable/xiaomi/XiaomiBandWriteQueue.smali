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

    .line 78
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    .line 80
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-nez v2, :cond_1c

    goto :goto_1f

    .line 78
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    return-object v1

    .line 85
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private pump()V
    .registers 8

    .line 89
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_53

    .line 92
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pollNextOp()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    move-result-object v0

    .line 93
    if-nez v0, :cond_14

    .line 94
    return-void

    .line 96
    :cond_14
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 98
    if-eqz v1, :cond_52

    if-nez v2, :cond_25

    goto :goto_52

    .line 101
    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 103
    const/4 v4, 0x0

    :try_start_29
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->needsBandAck()Z

    move-result v5

    .line 104
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-interface {v0, v1, v2, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 105
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 106
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 107
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 108
    return-void

    .line 110
    :cond_3d
    if-eqz v5, :cond_41

    .line 111
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_42

    .line 118
    :cond_41
    goto :goto_51

    .line 113
    :catchall_42
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "write_queue"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 116
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 117
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 119
    :goto_51
    return-void

    .line 99
    :cond_52
    :goto_52
    return-void

    .line 90
    :cond_53
    :goto_53
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
    .registers 5

    .line 33
    if-nez p1, :cond_3

    .line 34
    return-void

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;-><init>([BZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 38
    return-void
.end method

.method enqueueCommand([B)V
    .registers 5

    .line 41
    if-nez p1, :cond_3

    .line 42
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;-><init>([BZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 46
    return-void
.end method

.method enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 49
    if-eqz p1, :cond_13

    if-nez p2, :cond_5

    goto :goto_13

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 54
    return-void

    .line 50
    :cond_13
    :goto_13
    return-void
.end method

.method enqueueRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .line 57
    if-nez p1, :cond_3

    .line 58
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 62
    return-void
.end method

.method onBandAck()V
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    if-eqz v0, :cond_a

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->waitingBandAck:Z

    .line 67
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 69
    :cond_a
    return-void
.end method

.method onWriteFinished()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 73
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 74
    return-void
.end method
