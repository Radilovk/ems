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

.field private static final BLE_BUILD_TAG:Ljava/lang/String; = "v1.1.51-ble"

.field private static final CONFIG_TO_START_DELAY_MS:J = 0x190L

.field private static final FIRST_HR_TIMEOUT_MS:J = 0x2ee0L

.field private static final HEALTH_CMD_CONFIG_HEART_RATE_SET:I = 0xb

.field private static final HEALTH_CMD_REALTIME_EVENT:I = 0x2f

.field private static final HEALTH_CMD_REALTIME_START:I = 0x2d

.field private static final HEALTH_CMD_REALTIME_STOP:I = 0x2e

.field private static final HEALTH_CMD_TYPE:I = 0x8

.field private static final STALL_CHECK_MS:J = 0xbb8L

.field private static final STALL_TIMEOUT_MS:J = 0x3a98L

.field private static final SYSTEM_CMD_DEVICE_INFO:I = 0x2

.field private static final SYSTEM_CMD_TYPE:I = 0x2

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

.field private gattServicesReady:Z

.field private hrEventCount:I

.field private lastHrEventMs:J

.field private lastNotifyChar:Ljava/lang/String;

.field private lastState:Ljava/lang/String;

.field private listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

.field private notifyEventCount:I

.field private phoneNonce:[B

.field private final postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

.field private final random:Ljava/util/Random;

.field private realtimeActive:Z

.field private realtimeStartRetries:I

.field private realtimeStarted:Z

.field private reconnectRunnable:Ljava/lang/Runnable;

.field private session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

.field private stallCheckRunnable:Ljava/lang/Runnable;

.field private streamStartMs:J

.field private targetMac:Ljava/lang/String;

.field private userRequestedDisconnect:Z

.field private final writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    .line 57
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 75
    const-string v1, "idle"

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private beginRealtimeStreaming()V
    .registers 5

    .line 460
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-nez v0, :cond_9

    goto :goto_2a

    .line 463
    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_e

    .line 464
    return-void

    .line 466
    :cond_e
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendHeartRateConfig()V

    .line 467
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 469
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    return-void

    .line 461
    :cond_2a
    :goto_2a
    return-void
.end method

.method private beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .registers 4

    .line 284
    const-string v0, "discoverServices"

    if-eqz p1, :cond_29

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-eqz v1, :cond_9

    goto :goto_29

    .line 288
    :cond_9
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 289
    const-string v1, "discovering"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 291
    :try_start_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_1e
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 298
    :goto_13
    goto :goto_28

    .line 295
    :catchall_14
    move-exception p1

    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    const-string p1, "service_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_28

    .line 292
    :catch_1e
    move-exception p1

    .line 293
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_13

    .line 299
    :goto_28
    return-void

    .line 285
    :cond_29
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip discover (ready="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gatt"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private static buildAuthDeviceInfo()[B
    .registers 5

    .line 694
    const/4 v0, 0x5

    new-array v1, v0, [[B

    .line 695
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 696
    const/4 v3, 0x2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 697
    const/4 v2, 0x3

    const-string v4, "XEMS"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 698
    const/4 v3, 0x4

    const/16 v4, 0xe0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 699
    const-string v2, "EN"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v3

    .line 694
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

    .line 892
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 893
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

    .line 896
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 894
    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 6

    .line 822
    if-nez p0, :cond_5

    .line 823
    const-string p0, ""

    return-object p0

    .line 825
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 826
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    .line 827
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 829
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelAuthTimeout()V
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 792
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 793
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 796
    :cond_15
    return-void
.end method

.method private cancelReconnect()V
    .registers 3

    .line 814
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 815
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 816
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 819
    :cond_15
    return-void
.end method

.method private decrypt([B)[B
    .registers 2

    .line 569
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object p1

    return-object p1
.end method

.method private decryptInbound([B)[B
    .registers 8

    .line 551
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 552
    if-eqz v0, :cond_31

    .line 556
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v2, v3, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p1

    .line 557
    :catchall_e
    move-exception v2

    .line 558
    array-length v3, p1

    const/16 v4, 0x8

    if-le v3, v4, :cond_30

    .line 559
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 560
    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    .line 561
    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iget-object p1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {p1, v0, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 564
    :cond_30
    throw v2

    .line 553
    :cond_31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no session"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disconnectGatt()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 400
    :try_start_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 402
    goto :goto_a

    .line 401
    :catchall_9
    move-exception v0

    .line 404
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 406
    goto :goto_11

    .line 405
    :catchall_10
    move-exception v0

    .line 407
    :goto_11
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 409
    :cond_13
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 410
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 411
    return-void
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .line 96
    const-string v0, "v1.1.51-ble"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    if-nez v1, :cond_e

    .line 90
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 92
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleAuth(Ljava/util/Map;I)V
    .registers 5
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

    .line 598
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_14

    .line 600
    :try_start_4
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleWatchNonce(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 604
    goto :goto_13

    .line 601
    :catchall_8
    move-exception p1

    .line 602
    const-string p2, "auth_nonce"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    const-string p1, "auth_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 605
    :goto_13
    return-void

    .line 607
    :cond_14
    const/4 p1, 0x5

    const-string v0, "auth"

    if-ne p2, p1, :cond_1f

    .line 608
    const-string p1, "userid step (not final)"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 611
    :cond_1f
    const/16 p1, 0x1b

    if-ne p2, p1, :cond_48

    .line 612
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 613
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 614
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p2, :cond_33

    .line 615
    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 616
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    const/4 v1, 0x0

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 618
    :cond_33
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 619
    const-string p2, "authenticated"

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 621
    const-string p1, "success frameEncrypt=true encIndex=1"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->start()V

    .line 624
    :cond_48
    return-void
.end method

.method private handleCommand([B)V
    .registers 7

    .line 573
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 574
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 575
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 576
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

    .line 577
    if-ne v1, v0, :cond_58

    .line 578
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_54

    const/16 v0, 0x1a

    if-eq v2, v0, :cond_3d

    const/16 v0, 0x1b

    if-eq v2, v0, :cond_3d

    const/4 v0, 0x5

    if-ne v2, v0, :cond_54

    .line 580
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore echo sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void

    .line 583
    :cond_54
    invoke-direct {p0, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleAuth(Ljava/util/Map;I)V

    .line 584
    return-void

    .line 586
    :cond_58
    const/16 v0, 0x8

    if-ne v1, v0, :cond_7b

    .line 587
    const/16 v0, 0x2f

    if-ne v2, v0, :cond_64

    .line 588
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleRealtimeStats(Ljava/util/Map;)V

    goto :goto_7a

    .line 590
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "health"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_7a
    return-void

    .line 594
    :cond_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method private handleNotify([B)V
    .registers 7

    .line 499
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p1

    .line 500
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "ack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 501
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAck()V

    .line 502
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    .line 503
    return-void

    .line 505
    :cond_19
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "chunk_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 506
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    .line 507
    iget-boolean p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncrypted:Z

    .line 508
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 509
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAck([B)V

    .line 510
    return-void

    .line 512
    :cond_38
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "chunk_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 513
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    if-ne p1, v0, :cond_9b

    .line 515
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAck([B)V

    .line 516
    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 517
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_65
    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkNum:I

    if-gt v2, v3, :cond_85

    .line 518
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 519
    if-eqz v3, :cond_82

    .line 520
    const/4 v4, 0x2

    new-array v4, v4, [[B

    aput-object v0, v4, p1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 517
    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 523
    :cond_85
    iget-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncrypted:Z

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p1, :cond_98

    .line 525
    :try_start_8d
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B

    move-result-object v0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_92

    .line 528
    goto :goto_98

    .line 526
    :catchall_92
    move-exception p1

    .line 527
    const-string v1, "chunk_decrypt"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    :cond_98
    :goto_98
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 532
    :cond_9b
    return-void

    .line 534
    :cond_9c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v1, "single"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 535
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAck([B)V

    .line 536
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 537
    iget-boolean p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    if-eqz p1, :cond_ca

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p1, :cond_ca

    .line 539
    :try_start_b7
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object v0
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_bc

    .line 544
    goto :goto_ca

    .line 540
    :catchall_bc
    move-exception p1

    .line 541
    const-string v1, "decrypt"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    const/16 p1, 0x20

    const-string v1, "decrypt_fail"

    invoke-virtual {p0, v1, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 543
    return-void

    .line 546
    :cond_ca
    :goto_ca
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 548
    :cond_cd
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

    .line 664
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 665
    const-string v0, "hr"

    if-nez p1, :cond_10

    .line 666
    const-string p1, "no health field"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void

    .line 669
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 670
    const/16 v1, 0x27

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 671
    if-nez p1, :cond_22

    .line 672
    const-string p1, "no realTimeStats field"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void

    .line 675
    :cond_22
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 676
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 677
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result p1

    .line 678
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

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 680
    if-nez v1, :cond_5a

    .line 681
    const-string p1, "measuring"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 682
    return-void

    .line 684
    :cond_5a
    if-lez v1, :cond_71

    const/16 p1, 0xdc

    if-gt v1, p1, :cond_71

    .line 685
    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 686
    const-string p1, "streaming"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 687
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_71

    .line 688
    invoke-interface {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    .line 691
    :cond_71
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

    .line 627
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 628
    if-eqz p1, :cond_b2

    .line 631
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 632
    const/16 v1, 0x1f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 633
    if-eqz p1, :cond_aa

    .line 636
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 637
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v2

    .line 638
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 639
    if-eqz v2, :cond_a2

    if-eqz p1, :cond_a2

    .line 642
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 643
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 644
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v5, v3, [[B

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v7, v5, v1

    .line 645
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 644
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v4

    .line 646
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 649
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v4, v3, [[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v5, v4, v6

    aput-object v2, v4, v1

    .line 650
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v2

    .line 649
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object p1

    .line 651
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->buildAuthDeviceInfo()[B

    move-result-object v2

    .line 652
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v4, v5, v6, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 654
    new-array v4, v3, [[B

    .line 655
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v6

    .line 656
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v1

    .line 654
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p1

    .line 657
    const/16 v2, 0x20

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 658
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 659
    const/16 v0, 0x1b

    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 661
    return-void

    .line 647
    :cond_9a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hmac mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_a2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "missing nonce/hmac"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_aa
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no watchNonce"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_b2
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

    .line 884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 885
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

    .line 888
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 886
    :cond_27
    :goto_27
    return p1
.end method

.method private static isValidMac(Ljava/lang/String;)Z
    .registers 2

    .line 855
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 858
    :cond_9
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 856
    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method private static makeCommand(II[B)[B
    .registers 3

    .line 703
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static makeTypedCommand(II[B)[B
    .registers 7

    .line 707
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 708
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 709
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 707
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 710
    if-eqz p2, :cond_24

    array-length p1, p2

    if-lez p1, :cond_24

    .line 711
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 713
    :cond_24
    return-object p0
.end method

.method private notifyConnected(Z)V
    .registers 3

    .line 849
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_7

    .line 850
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 852
    :cond_7
    return-void
.end method

.method private static parseAuthKey(Ljava/lang/String;)[B
    .registers 7

    .line 862
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 863
    return-object v0

    .line 865
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

    .line 866
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 867
    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 869
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_36

    .line 870
    return-object v0

    .line 872
    :cond_36
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 874
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_51

    .line 875
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

    .line 874
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 878
    :catchall_4f
    move-exception p0

    .line 879
    return-object v0

    .line 877
    :cond_51
    return-object v2
.end method

.method private scheduleAuthTimeout()V
    .registers 5

    .line 784
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 785
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 786
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 787
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 788
    return-void
.end method

.method private scheduleReconnect()V
    .registers 5

    .line 807
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 808
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 809
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 810
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 811
    return-void
.end method

.method private scheduleStallCheck()V
    .registers 5

    .line 768
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 769
    return-void

    .line 771
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 772
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 773
    return-void
.end method

.method private sendAuthPhoneNonce()V
    .registers 4

    .line 414
    const-string v0, "auth"

    const-string v1, "send phone nonce"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 416
    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 417
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 418
    const/16 v2, 0x1a

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 420
    return-void
.end method

.method private sendCommand([B)V
    .registers 5

    .line 483
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_2b

    .line 484
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildEncFrame([BI)[B

    move-result-object p1

    .line 488
    goto :goto_2f

    .line 489
    :cond_2b
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    .line 491
    :goto_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 495
    goto :goto_40

    .line 492
    :catchall_35
    move-exception p1

    .line 493
    const-string v0, "sendCommand"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    const-string p1, "send_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 496
    :goto_40
    return-void
.end method

.method private sendHeartRateConfig()V
    .registers 6

    .line 423
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 424
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 425
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 423
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 426
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 427
    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 428
    const/16 v2, 0xb

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object v0

    .line 430
    const-string v1, "health"

    const-string v2, "CONFIG_HEART_RATE_SET enabled interval=1"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 432
    return-void
.end method

.method private sendLinkPing()V
    .registers 3

    .line 747
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_9

    goto :goto_21

    .line 750
    :cond_9
    const-string v0, "link"

    const-string v1, "ping device info"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 753
    :try_start_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1e

    .line 754
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    .line 757
    :cond_1e
    goto :goto_20

    .line 756
    :catchall_1f
    move-exception v0

    .line 758
    :goto_20
    return-void

    .line 748
    :cond_21
    :goto_21
    return-void
.end method

.method private sendRealtimeStart()V
    .registers 6

    .line 435
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    const-string v1, "health"

    if-eqz v0, :cond_c

    .line 436
    const-string v0, "skip duplicate START"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    .line 439
    :cond_c
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-nez v0, :cond_22

    .line 440
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 441
    const-string v0, "auth"

    const-string v3, "force frameEncrypt before realtime"

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_29

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    goto :goto_2a

    :cond_29
    const/4 v0, -0x1

    .line 444
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realtime START enc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " encIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v0, 0x8

    const/16 v1, 0x2d

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 446
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 447
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 450
    return-void
.end method

.method private sendRealtimeStop()V
    .registers 4

    .line 453
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/16 v0, 0x8

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 455
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 457
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .registers 3

    .line 841
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 842
    const-string v0, "state"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_15

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 846
    :cond_15
    return-void
.end method

.method private startStallWatch()V
    .registers 5

    .line 761
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 762
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 763
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 764
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 765
    return-void
.end method

.method private stopStallWatch()V
    .registers 3

    .line 776
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 777
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 778
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 781
    :cond_15
    return-void
.end method


# virtual methods
.method beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V
    .registers 7

    .line 329
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    const-string v1, "gatt"

    if-eqz v0, :cond_c

    .line 330
    const-string p1, "skip duplicate notify setup"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void

    .line 333
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 335
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 336
    nop

    .line 337
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charActivityUuid()Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-static {p4, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 338
    nop

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charUploadUuid()Ljava/lang/String;

    move-result-object p3

    .line 338
    invoke-static {p4, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    .line 340
    if-eqz p2, :cond_37

    .line 341
    iget-object p4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p4, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 342
    const-string p2, "notify 53 enabled"

    invoke-virtual {p0, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_37
    if-eqz p3, :cond_43

    .line 345
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 346
    const-string p1, "notify 55 enabled"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_43
    const-string p1, "notify 51/52 enabled"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    new-instance p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueRunnable(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 145
    const-string v0, "connectGatt"

    const-string v1, "connect_fail"

    if-nez p1, :cond_7

    .line 146
    return-void

    .line 148
    :cond_7
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "no_bt_permission"

    if-nez v2, :cond_13

    .line 149
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_13
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 154
    const-string v2, "build"

    const-string v4, "v1.1.51-ble"

    invoke-virtual {p0, v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    .line 156
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_2d
    const-string p1, ""

    :goto_2f
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 157
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    .line 158
    if-eqz p1, :cond_123

    array-length p1, p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_40

    goto/16 :goto_123

    .line 162
    :cond_40
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    .line 163
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 164
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 165
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 166
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 167
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 168
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 169
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 170
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 171
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 172
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 173
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 174
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 175
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 176
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 177
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 178
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 179
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 180
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 181
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->isValidMac(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "bad_mac"

    if-nez p2, :cond_8a

    .line 182
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 183
    return-void

    .line 185
    :cond_8a
    const-string p2, "connecting"

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 186
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

    .line 187
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 188
    const-string v4, "no_bluetooth"

    if-nez p2, :cond_b3

    .line 189
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_b3
    :try_start_b3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_bd

    .line 194
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_be

    .line 195
    return-void

    .line 198
    :cond_bd
    goto :goto_bf

    .line 197
    :catchall_be
    move-exception v4

    .line 201
    :goto_bf
    :try_start_bf
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_c5} :catch_11e
    .catchall {:try_start_bf .. :try_end_c5} :catchall_119

    .line 208
    nop

    .line 210
    :try_start_c6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bond="

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_c6 .. :try_end_de} :catchall_df

    .line 212
    goto :goto_e0

    .line 211
    :catchall_df
    move-exception p3

    .line 214
    :goto_e0
    :try_start_e0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p3, v2, :cond_f2

    .line 215
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    const/4 v4, 0x2

    invoke-virtual {p2, p3, p1, v2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_fc

    .line 218
    :cond_f2
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-virtual {p2, p3, p1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_fc
    .catch Ljava/lang/SecurityException; {:try_start_e0 .. :try_end_fc} :catch_111
    .catchall {:try_start_e0 .. :try_end_fc} :catchall_109

    .line 228
    :goto_fc
    nop

    .line 229
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_105

    .line 230
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 231
    return-void

    .line 233
    :cond_105
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleAuthTimeout()V

    .line 234
    return-void

    .line 224
    :catchall_109
    move-exception p1

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 227
    return-void

    .line 220
    :catch_111
    move-exception p1

    .line 221
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 223
    return-void

    .line 205
    :catchall_119
    move-exception p1

    .line 206
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 207
    return-void

    .line 202
    :catch_11e
    move-exception p1

    .line 203
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 204
    return-void

    .line 159
    :cond_123
    :goto_123
    const-string p1, "bad_auth_key"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 237
    const-string v0, "gatt"

    const-string v1, "disconnect requested"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 239
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 240
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 241
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 242
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_1e

    .line 243
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStop()V

    .line 245
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 246
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 247
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 248
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 249
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 250
    const-string v1, "disconnected"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 252
    return-void
.end method

.method getGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getHrEventCount()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    return v0
.end method

.method getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 116
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

    .line 132
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 140
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

    .line 141
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method logHex(Ljava/lang/String;[BI)V
    .registers 4

    .line 136
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->logHex(Ljava/lang/String;[BI)V

    .line 137
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .line 833
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-nez v0, :cond_13

    .line 834
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 838
    :cond_13
    return-void
.end method

.method onConfigToStartDelay()V
    .registers 2

    .line 473
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    goto :goto_14

    .line 476
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 477
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startStallWatch()V

    .line 478
    return-void

    .line 474
    :cond_14
    :goto_14
    return-void
.end method

.method onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 321
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 322
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 323
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 324
    const-string p1, "gatt"

    const-string p2, "chars 51/52 ready"

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method onGattConnected(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 280
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 281
    return-void
.end method

.method onGattDisconnected()V
    .registers 3

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 303
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 304
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 306
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 307
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 309
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 310
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_36

    .line 311
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 312
    const-string v0, "gatt"

    const-string v1, "unexpected drop \u2014 reconnect in 2s"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 314
    return-void

    .line 316
    :cond_36
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method onGattNotify(Ljava/lang/String;[B)V
    .registers 3

    .line 361
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 362
    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 363
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleNotify([B)V

    .line 364
    return-void
.end method

.method onGattSendAuthNonce()V
    .registers 1

    .line 357
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendAuthPhoneNonce()V

    .line 358
    return-void
.end method

.method onGattState(Ljava/lang/String;)V
    .registers 2

    .line 353
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method onGattWriteDone()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onWriteFinished()V

    .line 372
    return-void
.end method

.method onKeepaliveTick()V
    .registers 11

    .line 717
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_d

    goto :goto_73

    .line 720
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 721
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    const-string v4, "health"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_56

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_56

    sub-long v2, v0, v2

    const-wide/16 v7, 0x2ee0

    cmp-long v9, v2, v7

    if-lez v9, :cond_56

    .line 723
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_4d

    .line 724
    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 725
    const-string v0, "no first 8/47 \u2014 retry START once"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 727
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendHeartRateConfig()V

    .line 728
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 730
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    .line 731
    return-void

    .line 733
    :cond_4d
    const-string v0, "no first 8/47 \u2014 reconnect"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 735
    return-void

    .line 737
    :cond_56
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_6c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v5, v0, v2

    if-lez v5, :cond_6c

    .line 738
    const-string v0, "HR stall \u2014 reconnect"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 740
    return-void

    .line 742
    :cond_6c
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendLinkPing()V

    .line 743
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    .line 744
    return-void

    .line 718
    :cond_73
    :goto_73
    return-void
.end method

.method onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gatt"

    invoke-virtual {p0, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 276
    return-void
.end method

.method onPostAuthInitComplete()V
    .registers 2

    .line 262
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_c

    .line 264
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 266
    :cond_c
    return-void
.end method

.method onReconnectTick()V
    .registers 4

    .line 799
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_22

    .line 802
    :cond_d
    const-string v0, "gatt"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void

    .line 800
    :cond_22
    :goto_22
    return-void
.end method

.method sendInitCommand(II[B)V
    .registers 4

    .line 269
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 271
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 121
    return-void
.end method

.method public startRealtime()V
    .registers 2

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 256
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 257
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 259
    :cond_12
    return-void
.end method

.method writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .registers 7

    .line 376
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    if-nez p3, :cond_8

    goto :goto_2b

    .line 379
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 380
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 382
    :try_start_f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    if-eqz v2, :cond_16

    .line 383
    return v1

    .line 386
    :cond_16
    goto :goto_18

    .line 385
    :catchall_17
    move-exception v1

    .line 387
    :goto_18
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 388
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 390
    :try_start_1f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_24

    return p1

    .line 391
    :catchall_24
    move-exception p1

    .line 392
    const-string p2, "writeFrame"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    return v0

    .line 377
    :cond_2b
    :goto_2b
    return v0
.end method
