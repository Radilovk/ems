.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dev"
.end annotation


# instance fields
.field final ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

.field busy:Z

.field d:Lcom/clj/fastble/data/BleDevice;

.field gatt:Ljava/lang/Object;

.field inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

.field lastSync:J

.field final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/isaigu/gymapp/bodytech/BtBridge$Item;",
            ">;"
        }
    .end annotation
.end field

.field started:Z

.field final tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;


# direct methods
.method constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .registers 3

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    .line 192
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    .line 201
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    .line 202
    return-void
.end method


# virtual methods
.method declared-synchronized acked()V
    .registers 3

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 279
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V

    .line 280
    :cond_e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 281
    monitor-exit p0

    return-void

    .line 276
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/clj/fastble/callback/BleWriteCallback;",
            "[BZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 228
    if-nez v4, :cond_1a

    .line 229
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 235
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_56

    .line 236
    monitor-exit p0

    return-void

    .line 230
    :cond_1a
    if-eqz p4, :cond_37

    .line 231
    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_1f
    if-ltz v1, :cond_15

    :try_start_21
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1f

    .line 233
    :cond_37
    const/4 v0, 0x0

    move v3, v0

    :goto_39
    if-ge v3, v4, :cond_15

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_54

    move-object v1, p2

    :goto_4a
    invoke-direct {v6, v0, v1, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_56

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_39

    :cond_54
    move-object v1, v2

    goto :goto_4a

    .line 227
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method begin()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    if-eqz v0, :cond_6

    .line 224
    :goto_5
    return-void

    .line 216
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    .line 219
    :try_start_c
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->requestConnectionPriority(Lcom/clj/fastble/data/BleDevice;I)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_16} :catch_1a

    .line 223
    :goto_16
    # invokes: Lcom/isaigu/gymapp/bodytech/BtBridge;->startBeat()V
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$000()V

    goto :goto_5

    .line 220
    :catch_1a
    move-exception v0

    .line 221
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 259
    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object v1, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    invoke-virtual {v0, v2, v2, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    .line 260
    :cond_c
    return-void
.end method

.method declared-synchronized fail(Lcom/clj/fastble/exception/BleException;)V
    .registers 4

    .prologue
    .line 264
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 267
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V

    .line 268
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 269
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    if-eqz v0, :cond_30

    .line 270
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    goto :goto_19

    .line 264
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_30
    monitor-exit p0

    return-void
.end method

.method declared-synchronized pump()V
    .registers 4

    .prologue
    .line 240
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    if-nez v0, :cond_f

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    .line 242
    if-nez v0, :cond_11

    .line 256
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 243
    :cond_11
    :try_start_11
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    if-nez v1, :cond_1c

    .line 244
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_1

    .line 240
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :cond_1c
    const/4 v1, 0x1

    :try_start_1d
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 248
    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    .line 250
    :try_start_21
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_2b
    .catchall {:try_start_21 .. :try_end_2a} :catchall_19

    goto :goto_f

    .line 251
    :catch_2b
    move-exception v0

    .line 252
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_19

    goto :goto_f
.end method

.method declared-synchronized relink()V
    .registers 2

    .prologue
    .line 206
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 211
    monitor-exit p0

    return-void

    .line 206
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
