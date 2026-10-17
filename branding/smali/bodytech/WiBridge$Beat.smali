.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;
.super Ljava/lang/Object;
.source "WiBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Beat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    const-class v1, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v1

    .line 459
    :try_start_d
    # getter for: Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_63

    .line 462
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 465
    :try_start_2a
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v3

    iget-object v7, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v3, v7}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_66

    move-result v3

    .line 469
    :goto_34
    if-eqz v3, :cond_1e

    .line 470
    const/4 v1, 0x1

    .line 472
    :try_start_37
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->heartbeat(J)Ljava/util/List;

    move-result-object v3

    .line 473
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v7, v8}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_48} :catch_49

    goto :goto_1e

    .line 474
    :catch_49
    move-exception v0

    .line 475
    const-string v3, "xems-wiems"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 460
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 466
    :catch_66
    move-exception v3

    move v3, v2

    .line 467
    goto :goto_34

    .line 478
    :cond_69
    const-class v2, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v2

    .line 479
    if-eqz v1, :cond_79

    :try_start_6e
    # getter for: Lcom/isaigu/gymapp/bodytech/WiBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    :goto_77
    monitor-exit v2

    .line 482
    return-void

    .line 480
    :cond_79
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/bodytech/WiBridge;->beating:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->access$202(Z)Z

    goto :goto_77

    .line 481
    :catchall_7e
    move-exception v0

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_7e

    throw v0
.end method
