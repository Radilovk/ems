.class public Lcom/isaigu/gymapp/ble/BleController;
.super Ljava/lang/Object;
.source "BleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;,
        Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    }
.end annotation


# static fields
.field private static queueArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/ble/BleController$WrapperData;",
            ">;"
        }
    .end annotation
.end field

.field private static retryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 17
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/LinkedHashMap;
    .locals 1

    .line 17
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static clearWriteData()V
    .locals 2

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static protocolResponse(Ljava/lang/String;I)V
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "responseProtocol"    # I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->responseProtocol:I

    if-ne v2, p1, :cond_0

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    .line 70
    .local v2, "wrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->clear()V

    goto :goto_1

    .line 67
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 77
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized writeData(Ljava/lang/String;[B)V
    .locals 7
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "data"    # [B

    const-class v0, Lcom/isaigu/gymapp/ble/BleController;

    monitor-enter v0

    .line 25
    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/ble/BleController$WrapperData;-><init>(Ljava/lang/String;[B)V

    .line 30
    .local v1, "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    sget-object v2, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v2, Lcom/isaigu/gymapp/ble/BleController;->timer:Ljava/util/Timer;

    if-nez v2, :cond_1

    .line 32
    new-instance v2, Lcom/isaigu/gymapp/ble/BleController$1;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ble/BleController$1;-><init>()V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x32

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ble/BleController;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    monitor-exit v0

    return-void

    .line 24
    .end local v1    # "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    .end local p0    # "address":Ljava/lang/String;
    .end local p1    # "data":[B
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 26
    .restart local p0    # "address":Ljava/lang/String;
    .restart local p1    # "data":[B
    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method
