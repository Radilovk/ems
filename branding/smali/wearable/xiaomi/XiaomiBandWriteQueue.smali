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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 20
    return-void
.end method

.method static synthetic access$000()Ljava/util/UUID;
    .registers 1

    .line 11
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->CCCD:Ljava/util/UUID;

    return-object v0
.end method

.method private pump()V
    .registers 6

    .line 57
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_47

    .line 60
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 62
    if-eqz v0, :cond_46

    if-nez v1, :cond_1e

    goto :goto_46

    .line 65
    :cond_1e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;

    .line 66
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 68
    :try_start_2a
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-interface {v2, v0, v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$WriteOp;->execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 69
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 70
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_38

    .line 76
    :cond_37
    goto :goto_45

    .line 72
    :catchall_38
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v2, "write_queue"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 75
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 77
    :goto_45
    return-void

    .line 63
    :cond_46
    :goto_46
    return-void

    .line 58
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 25
    return-void
.end method

.method enqueueBytes([B)V
    .registers 4

    .line 28
    if-nez p1, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$BytesOp;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 33
    return-void
.end method

.method enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 36
    if-eqz p1, :cond_13

    if-nez p2, :cond_5

    goto :goto_13

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$NotifyOp;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 41
    return-void

    .line 37
    :cond_13
    :goto_13
    return-void
.end method

.method enqueueRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .line 44
    if-nez p1, :cond_3

    .line 45
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 49
    return-void
.end method

.method onWriteFinished()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->busy:Z

    .line 53
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->pump()V

    .line 54
    return-void
.end method
