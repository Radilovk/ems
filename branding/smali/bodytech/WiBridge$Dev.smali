.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;
.super Ljava/lang/Object;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dev"
.end annotation


# instance fields
.field final ack:Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;

.field busy:Z

.field d:Lcom/clj/fastble/data/BleDevice;

.field volatile enqPhase:I

.field inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

.field listener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

.field final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/isaigu/gymapp/bodytech/WiBridge$Item;",
            ">;"
        }
    .end annotation
.end field

.field final readCb:Lcom/isaigu/gymapp/bodytech/WiBridge$Read;

.field final runCb:Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;

.field final tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;


# direct methods
.method constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .registers 3

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    .line 267
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->enqPhase:I

    .line 272
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;-><init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;

    .line 273
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Read;-><init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->readCb:Lcom/isaigu/gymapp/bodytech/WiBridge$Read;

    .line 274
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;-><init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->runCb:Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;

    .line 277
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    .line 278
    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/clj/fastble/callback/BleWriteCallback;",
            "[B)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 288
    monitor-enter p0

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 289
    if-nez v4, :cond_1c

    .line 290
    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;-><init>(I[BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 294
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->pump()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3b

    .line 295
    monitor-exit p0

    return-void

    :cond_1c
    move v3, v0

    .line 292
    :goto_1d
    if-ge v3, v4, :cond_17

    :try_start_1f
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    const/4 v7, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_39

    move-object v1, p2

    :goto_2f
    invoke-direct {v6, v7, v0, v1, p3}, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;-><init>(I[BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_3b

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_39
    move-object v1, v2

    goto :goto_2f

    .line 288
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method done(Lcom/isaigu/gymapp/bodytech/WiBridge$Item;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 335
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object v1, p1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->orig:[B

    invoke-virtual {v0, v2, v2, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    .line 336
    :cond_e
    return-void
.end method

.method declared-synchronized fail(Lcom/clj/fastble/exception/BleException;)V
    .registers 4

    .prologue
    .line 348
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->busy:Z

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->forget()V

    .line 352
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 353
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    if-eqz v0, :cond_30

    .line 354
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    goto :goto_19

    .line 348
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_30
    monitor-exit p0

    return-void
.end method

.method declared-synchronized next()V
    .registers 3

    .prologue
    .line 339
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    .line 341
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->busy:Z

    .line 342
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/WiBridge$Item;)V

    .line 343
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->pump()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 344
    monitor-exit p0

    return-void

    .line 339
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pump()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 308
    monitor-enter p0

    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->busy:Z

    if-nez v1, :cond_12

    .line 309
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    move-object v5, v0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1d

    .line 310
    if-nez v5, :cond_14

    .line 332
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 311
    :cond_14
    :try_start_14
    iget v1, v5, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->kind:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    .line 312
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/WiBridge$Item;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_2

    .line 308
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 315
    :cond_20
    const/4 v1, 0x1

    :try_start_21
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->busy:Z

    .line 316
    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1d

    .line 318
    :try_start_25
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    .line 319
    iget v2, v5, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->kind:I

    if-nez v2, :cond_61

    .line 320
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const-string v3, "7764d8fe-c6a9-11e4-8731-1681e6b88ec1"

    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->op:[B

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->chr([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->op:[B

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/WiProto;->value([B)[B

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;

    invoke-virtual/range {v1 .. v6}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_42} :catch_43
    .catchall {:try_start_25 .. :try_end_42} :catchall_1d

    goto :goto_12

    .line 326
    :catch_43
    move-exception v1

    .line 327
    :try_start_44
    const-string v2, "xems-wiems"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_1d

    goto :goto_12

    .line 321
    :cond_61
    :try_start_61
    iget v2, v5, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->kind:I

    if-ne v2, v3, :cond_71

    .line 322
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const-string v3, "0000180f-0000-1000-8000-00805f9b34fb"

    const-string v4, "00002a19-0000-1000-8000-00805f9b34fb"

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->readCb:Lcom/isaigu/gymapp/bodytech/WiBridge$Read;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/clj/fastble/BleManager;->read(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    goto :goto_12

    .line 324
    :cond_71
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const-string v3, "7764d8fe-c6a9-11e4-8731-1681e6b88ec1"

    const-string v4, "7764eda8-c6a9-11e4-8731-1681e6b88ec1"

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->runCb:Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_7c} :catch_43
    .catchall {:try_start_61 .. :try_end_7c} :catchall_1d

    goto :goto_12
.end method

.method declared-synchronized read(Lcom/clj/fastble/callback/BleWriteCallback;[B)V
    .registers 7

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;-><init>(I[BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->pump()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 300
    monitor-exit p0

    return-void

    .line 298
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized relink()V
    .registers 2

    .prologue
    .line 281
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->busy:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->forget()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 285
    monitor-exit p0

    return-void

    .line 281
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized subscribe()V
    .registers 7

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;-><init>(I[BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->pump()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 305
    monitor-exit p0

    return-void

    .line 303
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
