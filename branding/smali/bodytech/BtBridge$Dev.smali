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

.field loggedPhase:I

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

.field soft:Z

.field started:Z

.field final tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

.field writeFails:I


# direct methods
.method constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    .line 531
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    .line 540
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    .line 545
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loggedPhase:I

    .line 549
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    .line 552
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    .line 553
    return-void
.end method


# virtual methods
.method declared-synchronized acked()V
    .registers 5

    .prologue
    .line 676
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 677
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 678
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastAck:J

    .line 680
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    .line 681
    :cond_19
    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V

    .line 682
    :cond_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 683
    monitor-exit p0

    return-void

    .line 676
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    .registers 11
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

    .line 595
    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 596
    if-nez v4, :cond_1a

    .line 597
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 607
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_62

    .line 608
    monitor-exit p0

    return-void

    .line 598
    :cond_1a
    if-eqz p4, :cond_37

    .line 599
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

    .line 601
    :cond_37
    const/4 v0, 0x0

    move v3, v0

    :goto_39
    if-ge v3, v4, :cond_15

    .line 602
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_60

    move-object v1, p2

    :goto_48
    invoke-direct {v5, v0, v1, p3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    .line 603
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->soft:Z

    if-eqz v0, :cond_57

    iget-object v0, v5, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->strengthCh([B)I

    move-result v0

    iput v0, v5, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->dropCh:I

    .line 604
    :cond_57
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_62

    .line 601
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_39

    :cond_60
    move-object v1, v2

    .line 602
    goto :goto_48

    .line 595
    :catchall_62
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

    .line 581
    monitor-enter p0

    if-eqz p5, :cond_b

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 582
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_50

    .line 592
    :goto_e
    monitor-exit p0

    return-void

    .line 585
    :cond_10
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 586
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    .line 587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadTotal:I

    .line 588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    .line 589
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

    .line 590
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_50

    goto :goto_e

    .line 581
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method begin()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    if-eqz v0, :cond_6

    .line 577
    :goto_5
    return-void

    .line 569
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    .line 572
    :try_start_c
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->requestConnectionPriority(Lcom/clj/fastble/data/BleDevice;I)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_16} :catch_1a

    .line 576
    :goto_16
    # invokes: Lcom/isaigu/gymapp/bodytech/BtBridge;->startBeat()V
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$000()V

    goto :goto_5

    .line 573
    :catch_1a
    move-exception v0

    .line 574
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

    .line 657
    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object v1, p1, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    invoke-virtual {v0, v2, v2, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    .line 658
    :cond_c
    return-void
.end method

.method declared-synchronized fail(Lcom/clj/fastble/exception/BleException;)V
    .registers 4

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 663
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 664
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 665
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 666
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 667
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V

    .line 668
    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 669
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    if-eqz v0, :cond_3e

    .line 670
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_27

    .line 662
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 672
    :cond_3e
    monitor-exit p0

    return-void
.end method

.method declared-synchronized preempt()V
    .registers 7

    .prologue
    .line 617
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_43

    move-result v0

    if-eqz v0, :cond_f

    .line 632
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 618
    :cond_f
    :try_start_f
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 619
    const/4 v0, 0x0

    move v1, v0

    .line 621
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    if-eqz v0, :cond_4a

    .line 622
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    if-eqz v3, :cond_46

    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->dropCh:I

    if-lez v3, :cond_46

    .line 623
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    iget v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->dropCh:I

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lost(I)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    .line 625
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v3, :cond_16

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    invoke-direct {v3, v4, v5, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_43

    goto :goto_16

    .line 617
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 627
    :cond_46
    :try_start_46
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_16

    .line 630
    :cond_4a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 631
    if-lez v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->pump()V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_43

    goto :goto_d
.end method

.method declared-synchronized pump()V
    .registers 4

    .prologue
    .line 636
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    if-nez v0, :cond_f

    .line 637
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_20

    .line 638
    if-nez v0, :cond_11

    .line 654
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 639
    :cond_11
    :try_start_11
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    if-nez v1, :cond_23

    .line 640
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->endLoad:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 641
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->done(Lcom/isaigu/gymapp/bodytech/BtBridge$Item;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_1

    .line 636
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 644
    :cond_23
    const/4 v1, 0x1

    :try_start_24
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 645
    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_20

    .line 647
    :try_start_28
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->ack:Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_31} :catch_32
    .catchall {:try_start_28 .. :try_end_31} :catchall_20

    goto :goto_f

    .line 648
    :catch_32
    move-exception v0

    .line 649
    :try_start_33
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->lost()V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_20

    goto :goto_f
.end method

.method declared-synchronized relink()V
    .registers 2

    .prologue
    .line 557
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->writeFails:I

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->inflight:Lcom/isaigu/gymapp/bodytech/BtBridge$Item;

    .line 561
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->forget()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    .line 564
    monitor-exit p0

    return-void

    .line 557
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
