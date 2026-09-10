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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/ble/BleController$WrapperData;",
            ">;"
        }
    .end annotation
.end field

.field private static retryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static clearWriteData()V
    .locals 2

    .prologue
    .line 75
    sget-object v1, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static protocolResponse(Ljava/lang/String;I)V
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "responseProtocol"    # I

    .prologue
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address \uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Lcom/isaigu/gymapp/ble/BleController;->retryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->responseProtocol:I

    if-ne v3, p1, :cond_1

    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    .line 64
    .local v2, "wrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->clear()V

    .line 71
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
    :cond_0
    return-void

    .line 61
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;>;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static writeData(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 23
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/MacUtils;->formatBleMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/ble/BleController$WrapperData;-><init>(Ljava/lang/String;[B)V

    .line 28
    .local v0, "wrapperData":Lcom/isaigu/gymapp/ble/BleController$WrapperData;
    sget-object v1, Lcom/isaigu/gymapp/ble/BleController;->queueArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/isaigu/gymapp/ble/BleController;->timer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/isaigu/gymapp/ble/BleController$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ble/BleController$1;-><init>()V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ble/BleController;->timer:Ljava/util/Timer;

    goto :goto_0
.end method
