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

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 33
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 34
    monitor-exit v5

    .line 52
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    .line 37
    .local v3, "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    .line 38
    .local v0, "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 39
    const-string v4, "0002"

    iget-object v6, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    iget-object v7, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-virtual {v0, v4, v6, v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->writeOnUiThread(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 40
    const-string/jumbo v4, "write: "

    iget-object v6, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 41
    new-instance v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;-><init>(Lcom/isaigu/gymapp/ble/BleController$WrapperData;)V

    .line 42
    .local v2, "retryWrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    const/4 v1, 0x0

    .line 43
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v6, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v6, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    check-cast v1, Ljava/util/List;

    .line 49
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    .end local v2    # "retryWrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    .end local v3    # "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 46
    .restart local v0    # "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    .restart local v2    # "retryWrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    .restart local v3    # "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 47
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-static {}, Lcom/isaigu/gymapp/ble/BleController;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v6, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
