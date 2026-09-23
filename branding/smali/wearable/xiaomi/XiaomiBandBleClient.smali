.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
.super Ljava/lang/Object;
.source "XiaomiBandBleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;
    }
.end annotation


# static fields
.field private static final AUTH_CMD_AUTH:I = 0x1b

.field private static final AUTH_CMD_NONCE:I = 0x1a

.field private static final AUTH_CMD_SEND_USERID:I = 0x5

.field private static final AUTH_CMD_TYPE:I = 0x1

.field private static final AUTH_TIMEOUT_MS:J = 0xafc8L

.field private static final HEALTH_CMD_REALTIME_EVENT:I = 0x2f

.field private static final HEALTH_CMD_REALTIME_START:I = 0x2d

.field private static final HEALTH_CMD_REALTIME_STOP:I = 0x2e

.field private static final HEALTH_CMD_SET_USER_INFO:I = 0x0

.field private static final HEALTH_CMD_TYPE:I = 0x8

.field private static instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;


# instance fields
.field private appContext:Landroid/content/Context;

.field private authKey:[B

.field private authTimeoutRunnable:Ljava/lang/Runnable;

.field private authenticated:Z

.field private charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private chunkEncrypted:Z

.field private final chunkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private chunkNum:I

.field private frameEncrypt:Z

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private final gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

.field private hrEventCount:I

.field private lastState:Ljava/lang/String;

.field private listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

.field private notifyEventCount:I

.field private phoneNonce:[B

.field private final random:Ljava/util/Random;

.field private realtimeActive:Z

.field private session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

.field private targetMac:Ljava/lang/String;

.field private userInfoSent:Z

.field private final writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    .line 45
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 64
    const-string v0, "idle"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private static buildAuthDeviceInfo()[B
    .registers 5

    .line 540
    const/4 v0, 0x5

    new-array v1, v0, [[B

    .line 541
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 542
    const/4 v3, 0x2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 543
    const/4 v2, 0x3

    const-string v4, "XEMS"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 544
    const/4 v3, 0x4

    const/16 v4, 0xe0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 545
    const-string v2, "EN"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v3

    .line 540
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static bytesField(Ljava/util/Map;I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)[B"
        }
    .end annotation

    .line 633
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 634
    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-nez v0, :cond_1c

    goto :goto_23

    .line 637
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 635
    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private cancelAuthTimeout()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 567
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 568
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 571
    :cond_15
    return-void
.end method

.method private decrypt([B)[B
    .registers 10

    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 417
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_26

    aget v5, v2, v4

    .line 418
    iget v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    add-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 420
    :try_start_15
    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v6, v7, v5, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object v6

    .line 422
    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    .line 423
    return-object v6

    .line 424
    :catchall_22
    move-exception v5

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 427
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "decrypt failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_2e
    .array-data 4
        0x0
        -0x1
        0x1
    .end array-data
.end method

.method private disconnectGatt()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 299
    :try_start_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 301
    goto :goto_a

    .line 300
    :catchall_9
    move-exception v0

    .line 303
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 305
    goto :goto_11

    .line 304
    :catchall_10
    move-exception v0

    .line 306
    :goto_11
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 308
    :cond_13
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 309
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 310
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    if-nez v1, :cond_e

    .line 71
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 73
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleAuth(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 455
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_14

    .line 457
    :try_start_4
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleWatchNonce(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 461
    goto :goto_13

    .line 458
    :catchall_8
    move-exception p1

    .line 459
    const-string p2, "auth_nonce"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    const-string p1, "auth_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 462
    :goto_13
    return-void

    .line 464
    :cond_14
    const/16 p1, 0x1b

    if-eq p2, p1, :cond_1b

    const/4 v0, 0x5

    if-ne p2, v0, :cond_57

    .line 465
    :cond_1b
    const/4 v0, 0x1

    if-ne p2, p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 466
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 467
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 468
    const-string p1, "authenticated"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "success frameEncrypt="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "auth"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendUserInfo()V

    .line 472
    iget-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz p1, :cond_57

    .line 473
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 474
    const-string p1, "streaming"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 477
    :cond_57
    return-void
.end method

.method private handleCommand([B)V
    .registers 7

    .line 431
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 432
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 433
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sub="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmd"

    invoke-virtual {p0, v4, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    if-ne v1, v0, :cond_32

    .line 436
    invoke-direct {p0, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleAuth(Ljava/util/Map;I)V

    .line 437
    return-void

    .line 439
    :cond_32
    const/16 v0, 0x8

    if-ne v1, v0, :cond_53

    .line 440
    if-nez v2, :cond_4c

    .line 441
    const-string p1, "health"

    const-string v0, "userInfo ack"

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz p1, :cond_4b

    .line 443
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 444
    const-string p1, "streaming"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 446
    :cond_4b
    return-void

    .line 448
    :cond_4c
    const/16 v0, 0x2f

    if-ne v2, v0, :cond_53

    .line 449
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleRealtimeStats(Ljava/util/Map;)V

    .line 452
    :cond_53
    return-void
.end method

.method private handleNotify([B)V
    .registers 7

    .line 370
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p1

    .line 371
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "chunk_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 372
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    .line 373
    iget-boolean p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncrypted:Z

    .line 374
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 375
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V

    .line 376
    return-void

    .line 378
    :cond_23
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "chunk_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    if-ne p1, v0, :cond_86

    .line 381
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V

    .line 382
    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 383
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_50
    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    if-gt v2, v3, :cond_70

    .line 384
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 385
    if-eqz v3, :cond_6d

    .line 386
    const/4 v4, 0x2

    new-array v4, v4, [[B

    aput-object v0, v4, p1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 383
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 389
    :cond_70
    iget-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncrypted:Z

    if-eqz p1, :cond_83

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p1, :cond_83

    .line 391
    :try_start_78
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B

    move-result-object v0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7d

    .line 394
    goto :goto_83

    .line 392
    :catchall_7d
    move-exception p1

    .line 393
    const-string v1, "chunk_decrypt"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    :cond_83
    :goto_83
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 398
    :cond_86
    return-void

    .line 400
    :cond_87
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "single"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V

    .line 402
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 403
    iget-boolean p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p1, :cond_ae

    .line 405
    :try_start_a2
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B

    move-result-object v0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a7

    .line 409
    goto :goto_ae

    .line 406
    :catchall_a7
    move-exception p1

    .line 407
    const-string v0, "decrypt"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    return-void

    .line 411
    :cond_ae
    :goto_ae
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 413
    :cond_b1
    return-void
.end method

.method private handleRealtimeStats(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 516
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 517
    const-string v0, "hr"

    if-nez p1, :cond_10

    .line 518
    const-string p1, "no health field"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 521
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 522
    const/16 v1, 0x27

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 523
    if-nez p1, :cond_22

    .line 524
    const-string p1, "no realTimeStats field"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void

    .line 527
    :cond_22
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 528
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 529
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result p1

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw hr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " steps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-lez v1, :cond_5e

    const/16 p1, 0xdc

    if-gt v1, p1, :cond_5e

    .line 532
    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 533
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_5e

    .line 534
    invoke-interface {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    .line 537
    :cond_5e
    return-void
.end method

.method private handleWatchNonce(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 481
    if-eqz p1, :cond_b0

    .line 484
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 485
    const/16 v1, 0x1f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 486
    if-eqz p1, :cond_a8

    .line 489
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 490
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v2

    .line 491
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 492
    if-eqz v2, :cond_a0

    if-eqz p1, :cond_a0

    .line 495
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 496
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v5, v3, [[B

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v7, v5, v1

    .line 497
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 496
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v4

    .line 498
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 501
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v4, v3, [[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v5, v4, v6

    aput-object v2, v4, v1

    .line 502
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v2

    .line 501
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object p1

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->buildAuthDeviceInfo()[B

    move-result-object v2

    .line 504
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v4, v5, v6, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 506
    new-array v4, v3, [[B

    .line 507
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v6

    .line 508
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v1

    .line 506
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p1

    .line 509
    const/16 v2, 0x20

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 510
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 511
    const/16 v0, 0x1b

    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V

    .line 513
    return-void

    .line 499
    :cond_98
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hmac mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_a0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "missing nonce/hmac"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_a8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no watchNonce"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_b0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no auth"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static intField(Ljava/util/Map;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)I"
        }
    .end annotation

    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 626
    const/4 p1, 0x0

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    goto :goto_27

    .line 629
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 627
    :cond_27
    :goto_27
    return p1
.end method

.method private static isValidMac(Ljava/lang/String;)Z
    .registers 2

    .line 596
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 599
    :cond_9
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 597
    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method private static makeCommand(II[B)[B
    .registers 7

    .line 549
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 550
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 551
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 549
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 552
    if-eqz p2, :cond_21

    .line 553
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 555
    :cond_21
    return-object p0
.end method

.method private notifyConnected(Z)V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_7

    .line 591
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 593
    :cond_7
    return-void
.end method

.method private static parseAuthKey(Ljava/lang/String;)[B
    .registers 7

    .line 603
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 604
    return-object v0

    .line 606
    :cond_4
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 607
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 608
    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 610
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_36

    .line 611
    return-object v0

    .line 613
    :cond_36
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 615
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_51

    .line 616
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    :try_start_41
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4f

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 619
    :catchall_4f
    move-exception p0

    .line 620
    return-object v0

    .line 618
    :cond_51
    return-object v2
.end method

.method private scheduleAuthTimeout()V
    .registers 5

    .line 559
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 560
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 561
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 562
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    return-void
.end method

.method private sendAuthPhoneNonce()V
    .registers 4

    .line 313
    const-string v0, "auth"

    const-string v1, "send phone nonce"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 315
    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 316
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 317
    const/16 v2, 0x1a

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V

    .line 319
    return-void
.end method

.method private sendCommand([B)V
    .registers 5

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_2b

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildEncFrame([BI)[B

    move-result-object p1

    .line 359
    goto :goto_2f

    .line 360
    :cond_2b
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    .line 362
    :goto_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueBytes([B)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 366
    goto :goto_40

    .line 363
    :catchall_35
    move-exception p1

    .line 364
    const-string v0, "sendCommand"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    const-string p1, "send_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 367
    :goto_40
    return-void
.end method

.method private sendRealtimeStart()V
    .registers 4

    .line 341
    const-string v0, "health"

    const-string v1, "realtime START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/16 v0, 0x8

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 343
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 344
    return-void
.end method

.method private sendRealtimeStop()V
    .registers 4

    .line 347
    const/16 v0, 0x8

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 349
    return-void
.end method

.method private sendUserInfo()V
    .registers 9

    .line 322
    const-string v0, "health"

    const-string v1, "setUserInfo"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/16 v0, 0x9

    new-array v1, v0, [[B

    .line 324
    const/4 v2, 0x1

    const/16 v3, 0xaf

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 325
    const/4 v4, 0x2

    const/high16 v6, 0x42960000    # 75.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v6

    aput-object v6, v1, v2

    .line 326
    const/4 v6, 0x3

    const v7, 0x12fa6c5

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    aput-object v7, v1, v4

    .line 327
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    aput-object v7, v1, v6

    .line 328
    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v1, v4

    .line 329
    const/4 v3, 0x6

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v6

    .line 330
    const/4 v4, 0x7

    const/16 v6, 0x1f40

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v1, v3

    .line 331
    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v4

    .line 332
    const/16 v0, 0xb

    const/16 v3, 0x1e

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v1, v3

    .line 323
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 333
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 334
    nop

    .line 335
    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 334
    invoke-static {v3, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 336
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 337
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userInfoSent:Z

    .line 338
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .registers 3

    .line 582
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 583
    const-string v0, "state"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_15

    .line 585
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 587
    :cond_15
    return-void
.end method


# virtual methods
.method beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 252
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 253
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    new-instance p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueRunnable(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 122
    const-string v0, "connectGatt"

    const-string v1, "connect_fail"

    if-nez p1, :cond_7

    .line 123
    return-void

    .line 125
    :cond_7
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    .line 128
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    const-string p1, ""

    :goto_1c
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 129
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    .line 130
    if-eqz p1, :cond_e0

    array-length p1, p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2d

    goto/16 :goto_e0

    .line 134
    :cond_2d
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    .line 135
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 136
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userInfoSent:Z

    .line 137
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 138
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 139
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 140
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 141
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 142
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 143
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 144
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 145
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->isValidMac(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "bad_mac"

    if-nez p2, :cond_5f

    .line 146
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_5f
    const-string p2, "connecting"

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "connect"

    invoke-virtual {p0, v2, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 152
    const-string v2, "no_bluetooth"

    if-nez p2, :cond_88

    .line 153
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_88
    :try_start_88
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_92

    .line 158
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_93

    .line 159
    return-void

    .line 162
    :cond_92
    goto :goto_94

    .line 161
    :catchall_93
    move-exception v2

    .line 165
    :goto_94
    :try_start_94
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_9a} :catch_db
    .catchall {:try_start_94 .. :try_end_9a} :catchall_d6

    .line 172
    nop

    .line 174
    :try_start_9b
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p3, v2, :cond_ad

    .line 175
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    const/4 v3, 0x2

    invoke-virtual {p2, p3, p1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_b7

    .line 178
    :cond_ad
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-virtual {p2, p3, p1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_b7
    .catch Ljava/lang/SecurityException; {:try_start_9b .. :try_end_b7} :catch_cc
    .catchall {:try_start_9b .. :try_end_b7} :catchall_c4

    .line 188
    :goto_b7
    nop

    .line 189
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_c0

    .line 190
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_c0
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleAuthTimeout()V

    .line 194
    return-void

    .line 184
    :catchall_c4
    move-exception p1

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 187
    return-void

    .line 180
    :catch_cc
    move-exception p1

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 183
    return-void

    .line 169
    :catchall_d6
    move-exception p1

    .line 170
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 171
    return-void

    .line 166
    :catch_db
    move-exception p1

    .line 167
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 168
    return-void

    .line 131
    :cond_e0
    :goto_e0
    const-string p1, "bad_auth_key"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 197
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 198
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_e

    .line 199
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStop()V

    .line 201
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 202
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 203
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userInfoSent:Z

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 205
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 206
    const-string v1, "disconnected"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 208
    return-void
.end method

.method getGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getHrEventCount()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    return v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    return v0
.end method

.method getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 117
    if-eqz p2, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_25

    :cond_23
    const-string p2, "null"

    .line 118
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method logHex(Ljava/lang/String;[BI)V
    .registers 4

    .line 113
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->logHex(Ljava/lang/String;[BI)V

    .line 114
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .line 574
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-nez v0, :cond_13

    .line 575
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 579
    :cond_13
    return-void
.end method

.method onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 243
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 244
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 245
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 246
    const-string p1, "gatt"

    const-string p2, "chars 51/52 ready"

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method onGattConnected(Landroid/bluetooth/BluetoothGatt;)V
    .registers 4

    .line 219
    const-string v0, "discoverServices"

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 220
    const-string v1, "discovering"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 222
    :try_start_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_17
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    .line 229
    :goto_c
    goto :goto_21

    .line 226
    :catchall_d
    move-exception p1

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const-string p1, "service_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_21

    .line 223
    :catch_17
    move-exception p1

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_c

    .line 230
    :goto_21
    return-void
.end method

.method onGattDisconnected()V
    .registers 3

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 234
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userInfoSent:Z

    .line 235
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 236
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 237
    const-string v1, "disconnected"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 239
    return-void
.end method

.method onGattNotify([B)V
    .registers 3

    .line 265
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 266
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleNotify([B)V

    .line 267
    return-void
.end method

.method onGattSendAuthNonce()V
    .registers 1

    .line 261
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendAuthPhoneNonce()V

    .line 262
    return-void
.end method

.method onGattState(Ljava/lang/String;)V
    .registers 2

    .line 257
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method onGattWriteDone()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onWriteFinished()V

    .line 271
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 98
    return-void
.end method

.method public startRealtime()V
    .registers 2

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 212
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userInfoSent:Z

    if-eqz v0, :cond_13

    .line 213
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 214
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 216
    :cond_13
    return-void
.end method

.method writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .registers 7

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    if-nez p3, :cond_8

    goto :goto_2b

    .line 278
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 279
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 281
    :try_start_f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    if-eqz v2, :cond_16

    .line 282
    return v1

    .line 285
    :cond_16
    goto :goto_18

    .line 284
    :catchall_17
    move-exception v1

    .line 286
    :goto_18
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 287
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 289
    :try_start_1f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_24

    return p1

    .line 290
    :catchall_24
    move-exception p1

    .line 291
    const-string p2, "writeFrame"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    return v0

    .line 276
    :cond_2b
    :goto_2b
    return v0
.end method
