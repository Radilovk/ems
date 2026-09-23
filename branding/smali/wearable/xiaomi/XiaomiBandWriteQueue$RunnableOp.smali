.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;
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
    name = "RunnableOp"
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;->runnable:Ljava/lang/Runnable;

    .line 136
    return-void
.end method


# virtual methods
.method public execute(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)Z
    .registers 4

    .line 142
    :try_start_0
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue$RunnableOp;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 145
    goto :goto_c

    .line 143
    :catchall_6
    move-exception p1

    .line 144
    const-string p2, "write_runnable"

    invoke-virtual {p3, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :goto_c
    const/4 p1, 0x0

    return p1
.end method
