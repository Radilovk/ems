.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;
.super Ljava/lang/Object;
.source "BtBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Beat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v4

    .line 411
    :try_start_f
    # getter for: Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 412
    :catchall_2b
    move-exception v0

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 414
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 417
    :try_start_40
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v8, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v8}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_49} :catch_59

    move-result v4

    .line 421
    :goto_4a
    if-nez v4, :cond_5c

    .line 422
    monitor-enter v0

    .line 423
    const/4 v4, 0x0

    :try_start_4e
    iput-boolean v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    .line 424
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V

    .line 425
    monitor-exit v0

    goto :goto_34

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v1

    .line 418
    :catch_59
    move-exception v4

    move v4, v2

    .line 419
    goto :goto_4a

    .line 429
    :cond_5c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v4, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->heartbeat(J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    iget-wide v8, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x1194

    cmp-long v4, v8, v10

    if-ltz v4, :cond_7b

    .line 431
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->sync(I)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iput-wide v6, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    .line 434
    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v0, v1, v12, v12, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    :cond_84
    move v1, v3

    .line 435
    goto :goto_34

    .line 436
    :cond_86
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2

    .line 437
    if-eqz v1, :cond_96

    :try_start_8b
    # getter for: Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    :goto_94
    monitor-exit v2

    .line 440
    return-void

    .line 438
    :cond_96
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$302(Z)Z

    goto :goto_94

    .line 439
    :catchall_9b
    move-exception v0

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_9b

    throw v0
.end method
