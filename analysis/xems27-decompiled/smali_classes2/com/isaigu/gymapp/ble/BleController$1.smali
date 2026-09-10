.class final Lcom/isaigu/gymapp/ble/BleController$1;
.super Ljava/lang/Object;
.source "BleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ble/BleController;->writeData(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 34
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 36
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    .line 39
    .local v1, "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v2

    .line 40
    .local v2, "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 41
    const-string v3, "fff2"

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    iget-object v5, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-virtual {v2, v3, v4, v5}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 42
    const-string v3, "write: "

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 43
    iget-object v3, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 44
    const-string v3, "www"

    const-string v4, "\u8bbe\u7f6e\u53c2\u6570"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    monitor-exit v0

    return-void

    .line 47
    :cond_1
    new-instance v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;-><init>(Lcom/isaigu/gymapp/ble/BleController$WrapperData;)V

    .line 48
    .local v3, "retryWrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    const/4 v4, 0x0

    .line 49
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v4, v5

    goto :goto_0

    .line 52
    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1    # "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    .end local v2    # "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    .end local v3    # "retryWrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    :cond_3
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
