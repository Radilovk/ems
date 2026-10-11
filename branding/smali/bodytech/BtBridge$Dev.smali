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

.field volatile enqPhase:I

.field gatt:Ljava/lang/Object;

.field inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

.field lastAck:J

.field lastSync:J

.field linkedAt:J

.field loadDone:I

.field loadTotal:I

.field loading:Z

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

.field writeFails:I


# direct methods
.method constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .registers 3

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    .line 468
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    .line 477
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    .line 482
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    .line 485
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    .line 486
    return-void
.end method


# virtual methods
.method declared-synchronized acked()V
    .registers 5

    .prologue
    .line 581
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 583
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastAck:J

    .line 585
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    .line 586
    :cond_19
    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V

    .line 587
    :cond_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 588
    monitor-exit p0

    return-void

    .line 581
    :catchall_23
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

    .line 528
    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 529
    if-nez v4, :cond_1a

    .line 530
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 536
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_56

    .line 537
    monitor-exit p0

    return-void

    .line 531
    :cond_1a
    if-eqz p4, :cond_37

    .line 532
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

    .line 534
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

    .line 528
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/clj/fastble/callback/BleWriteCallback;",
            "[BZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 514
    monitor-enter p0

    if-eqz p5, :cond_b

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 515
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_50

    .line 525
    :goto_e
    monitor-exit p0

    return-void

    .line 518
    :cond_10
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 519
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    .line 520
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadTotal:I

    .line 521
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    .line 522
    :goto_21
    if-ge v3, v4, :cond_3e

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_3c

    move-object v1, p2

    :goto_32
    invoke-direct {v6, v0, v1, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_21

    :cond_3c
    move-object v1, v2

    goto :goto_32

    .line 523
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_50

    goto :goto_e

    .line 514
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method begin()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 501
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    if-eqz v0, :cond_6

    .line 510
    :goto_5
    return-void

    .line 502
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    .line 505
    :try_start_c
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->requestConnectionPriority(Lcom/clj/fastble/data/BleDevice;I)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_16} :catch_1a

    .line 509
    :goto_16
    # invokes: Lcom/isaigu/gymapp/bodytech/BtBridge;->startBeat()V
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$000()V

    goto :goto_5

    .line 506
    :catch_1a
    move-exception v0

    .line 507
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

    .line 562
    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object v1, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    invoke-virtual {v0, v2, v2, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    .line 563
    :cond_c
    return-void
.end method

.method declared-synchronized fail(Lcom/clj/fastble/exception/BleException;)V
    .registers 4

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 568
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 570
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 571
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 572
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V

    .line 573
    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 574
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    if-eqz v0, :cond_3e

    .line 575
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_27

    .line 567
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 577
    :cond_3e
    monitor-exit p0

    return-void
.end method

.method declared-synchronized pump()V
    .registers 4

    .prologue
    .line 541
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    if-nez v0, :cond_f

    .line 542
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_20

    .line 543
    if-nez v0, :cond_11

    .line 559
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 544
    :cond_11
    :try_start_11
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    if-nez v1, :cond_23

    .line 545
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->endLoad:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 546
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_1

    .line 541
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 549
    :cond_23
    const/4 v1, 0x1

    :try_start_24
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 550
    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_20

    .line 552
    :try_start_28
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_31} :catch_32
    .catchall {:try_start_28 .. :try_end_31} :catchall_20

    goto :goto_f

    .line 553
    :catch_32
    move-exception v0

    .line 554
    :try_start_33
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_20

    goto :goto_f
.end method

.method declared-synchronized relink()V
    .registers 2

    .prologue
    .line 490
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->writeFails:I

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    .line 497
    monitor-exit p0

    return-void

    .line 490
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
