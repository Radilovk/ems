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

.field private static final BAND_ACK_TIMEOUT_MS:J = 0xbb8L

.field private static final BLE_BUILD_TAG:Ljava/lang/String; = "v1.1.54-ble"

.field private static final CONFIG_TO_START_DELAY_MS:J = 0x190L

.field private static final DEFAULT_ATT_MTU:I = 0x17

.field private static final FIRST_HR_TIMEOUT_MS:J = 0x2ee0L

.field private static final HEALTH_CMD_REALTIME_EVENT:I = 0x2f

.field private static final HEALTH_CMD_REALTIME_START:I = 0x2d

.field private static final HEALTH_CMD_REALTIME_STOP:I = 0x2e

.field private static final HEALTH_CMD_TYPE:I = 0x8

.field private static final MTU_FALLBACK_MS:J = 0x9c4L

.field private static final RAW_FILE:Ljava/lang/String; = "band-raw.csv"

.field private static final REALTIME_FILE:Ljava/lang/String; = "band-realtime.csv"

.field private static final STALL_CHECK_MS:J = 0xbb8L

.field private static final STALL_TIMEOUT_MS:J = 0x3a98L

.field private static final SYSTEM_CMD_DEVICE_INFO:I = 0x2

.field private static final SYSTEM_CMD_TYPE:I = 0x2

.field private static instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private appContext:Landroid/content/Context;

.field private attMtu:I

.field private authKey:[B

.field private authTimeoutRunnable:Ljava/lang/Runnable;

.field private authenticated:Z

.field private final bandAckTimeoutTask:Ljava/lang/Runnable;

.field private charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final chunkCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkEncryptedByChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private discoveryRequested:Z

.field private frameEncrypt:Z

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private final gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

.field private gattServicesReady:Z

.field private hrEventCount:I

.field private lastHrEventMs:J

.field private lastNotifyChar:Ljava/lang/String;

.field private lastRealtimeEventMs:J

.field private lastState:Ljava/lang/String;

.field private listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

.field private final mtuFallbackTask:Ljava/lang/Runnable;

.field private mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

.field private notifyCount51:I

.field private notifyCount52:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Landroid/os/Handler;

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    .line 70
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    .line 71
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 89
    const-string v0, "idle"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAckTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAckTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMtuFallbackTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMtuFallbackTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    .line 103
    const/16 v0, 0x17

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 106
    return-void
.end method

.method private beginRealtimeStreaming()V
    .registers 5

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-nez v0, :cond_9

    .line 546
    :cond_8
    :goto_8
    return-void

    .line 541
    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_8

    .line 544
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method

.method private beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .registers 5

    .prologue
    .line 359
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-eqz v0, :cond_37

    .line 360
    :cond_a
    const-string v0, "gatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip discover (ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_36
    return-void

    .line 364
    :cond_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 367
    const-string v0, "discovering"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 369
    :try_start_48
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_58

    goto :goto_36

    .line 370
    :catch_4c
    move-exception v0

    .line 371
    const-string v1, "discoverServices"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_36

    .line 373
    :catch_58
    move-exception v0

    .line 374
    const-string v1, "discoverServices"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    const-string v0, "service_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_36
.end method

.method private static buildAuthDeviceInfo()[B
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 824
    const/4 v0, 0x5

    new-array v0, v0, [[B

    .line 825
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 826
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "XEMS"

    .line 827
    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xe0

    .line 828
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "EN"

    .line 829
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v6

    .line 824
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static bytesField(Ljava/util/Map;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)[B"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1006
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1007
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-nez v1, :cond_1d

    .line 1008
    :cond_1b
    const/4 v0, 0x0

    .line 1010
    :goto_1c
    return-object v0

    :cond_1d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_1c
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 936
    if-nez p0, :cond_6

    .line 937
    const-string v0, ""

    .line 943
    :goto_5
    return-object v0

    .line 939
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 940
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_2b

    .line 941
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 943
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private cancelAuthTimeout()V
    .registers 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 906
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 907
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 910
    :cond_15
    return-void
.end method

.method private cancelReconnect()V
    .registers 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 929
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 930
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 933
    :cond_15
    return-void
.end method

.method private clearChunks()V
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 578
    return-void
.end method

.method private decrypt([B)[B
    .registers 3

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object v0

    return-object v0
.end method

.method private decryptInbound([B)[B
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 659
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 660
    if-nez v1, :cond_d

    .line 661
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_d
    :try_start_d
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_15} :catch_17

    move-result-object v0

    .line 670
    :goto_16
    return-object v0

    .line 665
    :catch_17
    move-exception v0

    .line 666
    array-length v2, p1

    const/16 v3, 0x8

    if-le v2, v3, :cond_3c

    .line 667
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 668
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [B

    .line 669
    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v3, v1, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object v0

    goto :goto_16

    .line 672
    :cond_3c
    throw v0
.end method

.method private disconnectGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_11

    .line 490
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_18

    .line 494
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_16

    .line 497
    :goto_f
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 499
    :cond_11
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 500
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 501
    return-void

    .line 495
    :catch_16
    move-exception v0

    goto :goto_f

    .line 491
    :catch_18
    move-exception v0

    goto :goto_a
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 116
    const-string v0, "v1.1.54-ble"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    .registers 2

    .prologue
    .line 109
    const-class v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    if-nez v0, :cond_e

    .line 110
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 112
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAuth(Ljava/util/Map;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 711
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_15

    .line 713
    :try_start_5
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleWatchNonce(Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    .line 737
    :cond_8
    :goto_8
    return-void

    .line 714
    :catch_9
    move-exception v0

    .line 715
    const-string v1, "auth_nonce"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_8

    .line 720
    :cond_15
    const/4 v0, 0x5

    if-ne p2, v0, :cond_20

    .line 721
    const-string v0, "auth"

    const-string v1, "userid step (not final)"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 724
    :cond_20
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_8

    .line 725
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 726
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 727
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_35

    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 731
    :cond_35
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 732
    const-string v0, "authenticated"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 734
    const-string v0, "auth"

    const-string v1, "success frameEncrypt=true encIndex=1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->start()V

    goto :goto_8
.end method

.method private handleCommand([B)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 681
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 682
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 683
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 684
    const-string v3, "cmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sub="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eq v1, v8, :cond_6a

    .line 686
    const-string v3, "band-raw.csv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 687
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_6a
    if-ne v1, v8, :cond_98

    .line 690
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v1, :cond_94

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_7b

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_7b

    const/4 v1, 0x5

    if-ne v2, v1, :cond_94

    .line 692
    :cond_7b
    const-string v0, "auth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore echo sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_93
    return-void

    .line 695
    :cond_94
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleAuth(Ljava/util/Map;I)V

    goto :goto_93

    .line 698
    :cond_98
    const/16 v3, 0x8

    if-ne v1, v3, :cond_bd

    .line 699
    const/16 v1, 0x2f

    if-ne v2, v1, :cond_a4

    .line 700
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleRealtimeStats(Ljava/util/Map;)V

    goto :goto_93

    .line 702
    :cond_a4
    const-string v0, "health"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 706
    :cond_bd
    const-string v0, "cmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "cmd_raw"

    const/16 v1, 0x30

    invoke-virtual {p0, v0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    goto :goto_93
.end method

.method private handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 581
    if-eqz p3, :cond_8

    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 656
    :cond_8
    :goto_8
    return-void

    .line 584
    :cond_9
    if-eqz p1, :cond_52

    .line 585
    :goto_b
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 586
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v2

    .line 587
    const-string v0, "ack"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 588
    iget v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    if-eqz v0, :cond_47

    .line 589
    const-string v0, "ack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NACK result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAck()V

    .line 592
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    goto :goto_8

    .line 584
    :cond_52
    const-string p1, ""

    goto :goto_b

    .line 595
    :cond_55
    const-string v0, "chunk_start"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    iget v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    iget-boolean v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    invoke-virtual {v0, p2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    goto :goto_8

    .line 602
    :cond_87
    const-string v0, "chunk_data"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 603
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 604
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 605
    if-eqz v0, :cond_ad

    if-eqz v1, :cond_ad

    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v3, v5, :cond_d3

    .line 606
    :cond_ad
    const-string v0, "chunk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected chunk "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 609
    :cond_d3
    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 611
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    invoke-virtual {v2, p2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 612
    new-array v2, v8, [B

    move v3, v4

    move-object v5, v2

    .line 613
    :goto_f3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v3, v2, :cond_114

    .line 614
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 615
    if-eqz v2, :cond_110

    .line 616
    const/4 v7, 0x2

    new-array v7, v7, [[B

    aput-object v5, v7, v8

    aput-object v2, v7, v4

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 613
    :cond_110
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f3

    .line 619
    :cond_114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 622
    if-nez v6, :cond_14d

    .line 623
    const-string v0, "chunk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B payload on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 626
    :cond_14d
    if-eqz v0, :cond_15d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_15d

    .line 628
    :try_start_159
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_15c} :catch_162

    move-result-object v5

    .line 634
    :cond_15d
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    goto/16 :goto_8

    .line 629
    :catch_162
    move-exception v0

    .line 630
    const-string v1, "chunk_decrypt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 638
    :cond_16a
    const-string v0, "single"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    invoke-virtual {v0, p2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 640
    if-nez v6, :cond_19d

    .line 641
    const-string v0, "notify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single frame on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " acked, not a command channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 644
    :cond_19d
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 645
    iget-boolean v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    if-eqz v1, :cond_1ab

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v1, :cond_1ab

    .line 647
    :try_start_1a7
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1aa} :catch_1b0

    move-result-object v0

    .line 654
    :cond_1ab
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    goto/16 :goto_8

    .line 648
    :catch_1b0
    move-exception v1

    .line 649
    const-string v2, "decrypt"

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    const-string v1, "decrypt_fail"

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    goto/16 :goto_8
.end method

.method private handleRealtimeStats(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 778
    if-nez v0, :cond_10

    .line 779
    const-string v0, "hr"

    const-string v1, "no health field"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_f
    :goto_f
    return-void

    .line 782
    :cond_10
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 783
    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 784
    if-nez v0, :cond_24

    .line 785
    const-string v0, "hr"

    const-string v1, "no realTimeStats field"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 788
    :cond_24
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v4

    .line 789
    const/4 v0, 0x4

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v5

    .line 790
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v6

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 792
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a2

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 793
    :goto_43
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_52
    :goto_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 796
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    const/4 v11, 0x1

    if-lt v1, v11, :cond_6e

    const/4 v11, 0x6

    if-le v1, v11, :cond_52

    .line 800
    :cond_6e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v11, 0x3d

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-eqz v1, :cond_a6

    .line 801
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_98
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 792
    :cond_a2
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_43

    .line 801
    :cond_a6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_98

    .line 804
    :cond_b6
    const-string v0, "band-realtime.csv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    .line 805
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x3

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x5

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x6

    .line 806
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "hr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw hr="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " steps="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " cal="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " f3="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v6, 0x3

    .line 808
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " f5="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dt="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 810
    if-nez v5, :cond_19a

    .line 811
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 814
    :cond_19a
    if-lez v5, :cond_f

    const/16 v0, 0xdc

    if-gt v5, v0, :cond_f

    .line 815
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 816
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_f

    .line 818
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_f
.end method

.method private handleWatchNonce(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 740
    invoke-static {p1, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 741
    if-nez v0, :cond_12

    .line 742
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no auth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_12
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 745
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 746
    if-nez v0, :cond_26

    .line 747
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no watchNonce"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_26
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 750
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 751
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 752
    if-eqz v1, :cond_36

    if-nez v0, :cond_3e

    .line 753
    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing nonce/hmac"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_3e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 756
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 757
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v3, v6, [[B

    aput-object v1, v3, v7

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v4, v3, v5

    .line 758
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v3

    .line 757
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v2

    .line 759
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 760
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hmac mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_6c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v2, v6, [[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v3, v2, v7

    aput-object v1, v2, v5

    .line 763
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 762
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 764
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->buildAuthDeviceInfo()[B

    move-result-object v1

    .line 765
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v7, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 767
    new-array v2, v6, [[B

    .line 768
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v2, v7

    .line 769
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    .line 767
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 770
    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 771
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 772
    const/16 v1, 0x1b

    invoke-static {v5, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 774
    return-void
.end method

.method private static intField(Ljava/util/Map;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 999
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 1002
    :goto_1c
    return v0

    :cond_1d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1c
.end method

.method private static isValidMac(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 969
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 970
    :cond_8
    const/4 v0, 0x0

    .line 972
    :goto_9
    return v0

    :cond_a
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method private static makeCommand(II[B)[B
    .registers 4

    .prologue
    .line 833
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static makeTypedCommand(II[B)[B
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 837
    new-array v0, v3, [[B

    .line 838
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 839
    invoke-static {v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 837
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 840
    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    .line 841
    new-array v1, v3, [[B

    aput-object v0, v1, v4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 843
    :cond_24
    return-object v0
.end method

.method private notifyConnected(Z)V
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_9

    .line 964
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 966
    :cond_9
    return-void
.end method

.method private static parseAuthKey(Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x10

    .line 976
    if-nez p0, :cond_7

    move-object v0, v1

    .line 993
    :goto_6
    return-object v0

    .line 979
    :cond_7
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 980
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 981
    :cond_2f
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3e

    move-object v0, v1

    .line 984
    goto :goto_6

    .line 986
    :cond_3e
    new-array v2, v6, [B

    .line 988
    const/4 v3, 0x0

    :goto_41
    if-ge v3, v6, :cond_59

    .line 989
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    :try_start_49
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_56} :catch_5b

    .line 988
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_59
    move-object v0, v2

    .line 991
    goto :goto_6

    .line 992
    :catch_5b
    move-exception v0

    move-object v0, v1

    .line 993
    goto :goto_6
.end method

.method private scheduleAuthTimeout()V
    .registers 5

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 899
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 900
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 901
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    return-void
.end method

.method private scheduleReconnect()V
    .registers 5

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 922
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 923
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 924
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    return-void
.end method

.method private scheduleStallCheck()V
    .registers 5

    .prologue
    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 887
    :goto_4
    return-void

    .line 885
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 886
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private sendAuthPhoneNonce()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 504
    const-string v0, "auth"

    const-string v1, "send phone nonce"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 506
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 507
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 508
    const/16 v1, 0x1a

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 510
    return-void
.end method

.method private sendCommand([B)V
    .registers 5

    .prologue
    .line 559
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_30

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 563
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildEncFrame([BI)[B

    move-result-object v0

    .line 567
    :goto_2a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 572
    :goto_2f
    return-void

    .line 565
    :cond_30
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_2a

    .line 568
    :catch_35
    move-exception v0

    .line 569
    const-string v1, "sendCommand"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private sendRealtimeStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 513
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    .line 514
    const-string v0, "health"

    const-string v1, "skip duplicate START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_c
    return-void

    .line 517
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-nez v0, :cond_22

    .line 518
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 519
    const-string v0, "auth"

    const-string v1, "force frameEncrypt before realtime"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 522
    :goto_2a
    const-string v1, "health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realtime START enc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/16 v0, 0x8

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 524
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 525
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    goto :goto_c

    .line 521
    :cond_67
    const/4 v0, -0x1

    goto :goto_2a
.end method

.method private sendRealtimeStop()V
    .registers 4

    .prologue
    .line 531
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/16 v0, 0x8

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 533
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 535
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 955
    if-eqz p1, :cond_17

    :goto_2
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 956
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_16

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 960
    :cond_16
    return-void

    .line 955
    :cond_17
    const-string p1, ""

    goto :goto_2
.end method

.method private startStallWatch()V
    .registers 5

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 876
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 877
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 878
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    return-void
.end method

.method private stopStallWatch()V
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 891
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 892
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 895
    :cond_15
    return-void
.end method


# virtual methods
.method beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V
    .registers 8

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-eqz v0, :cond_c

    .line 412
    const-string v0, "gatt"

    const-string v1, "skip duplicate notify setup"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_b
    return-void

    .line 415
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charActivityUuid()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {p4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charUploadUuid()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {p4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 422
    if-eqz v0, :cond_37

    .line 423
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v2, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 424
    const-string v0, "gatt"

    const-string v2, "notify 53 enabled"

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_37
    if-eqz v1, :cond_45

    .line 427
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 428
    const-string v0, "gatt"

    const-string v1, "notify 55 enabled"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_45
    const-string v0, "gatt"

    const-string v1, "notify 51/52 enabled"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueRunnable(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method cancelBandAckTimeout()V
    .registers 3

    .prologue
    .line 343
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/16 v5, 0x17

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_8

    .line 274
    :goto_7
    return-void

    .line 176
    :cond_8
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 177
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_7

    .line 180
    :cond_14
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 182
    const-string v0, "build"

    const-string v1, "v1.1.54-ble"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v1.1.54-ble"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "band-raw.csv"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "band-realtime.csv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 188
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->logPermissionState(Landroid/content/Context;)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    .line 190
    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_72
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 191
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8f

    .line 193
    :cond_85
    const-string v0, "bad_auth_key"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 190
    :cond_8c
    const-string v0, ""

    goto :goto_72

    .line 196
    :cond_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 198
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 199
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 200
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 201
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 202
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 203
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 204
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    .line 205
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 207
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 208
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 209
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 213
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 214
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 215
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 216
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 217
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 218
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 220
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 222
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 225
    :cond_e7
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 226
    const-string v0, "connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 228
    if-nez v0, :cond_113

    .line 229
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 233
    :cond_113
    :try_start_113
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_121

    .line 234
    const-string v1, "no_bluetooth"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_11e} :catch_120

    goto/16 :goto_7

    .line 237
    :catch_120
    move-exception v1

    .line 241
    :cond_121
    :try_start_121
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_126
    .catch Ljava/lang/IllegalArgumentException; {:try_start_121 .. :try_end_126} :catch_15e
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_126} :catch_166

    move-result-object v0

    .line 250
    :try_start_127
    const-string v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bond="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_143} :catch_199

    .line 254
    :goto_143
    :try_start_143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_16e

    .line 255
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_153
    .catch Ljava/lang/SecurityException; {:try_start_143 .. :try_end_153} :catch_17a
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_153} :catch_187

    .line 269
    :goto_153
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_194

    .line 270
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 242
    :catch_15e
    move-exception v0

    .line 243
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 245
    :catch_166
    move-exception v0

    .line 246
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 258
    :cond_16e
    :try_start_16e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_179
    .catch Ljava/lang/SecurityException; {:try_start_16e .. :try_end_179} :catch_17a
    .catch Ljava/lang/Throwable; {:try_start_16e .. :try_end_179} :catch_187

    goto :goto_153

    .line 260
    :catch_17a
    move-exception v0

    .line 261
    const-string v1, "connectGatt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 264
    :catch_187
    move-exception v0

    .line 265
    const-string v1, "connectGatt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 273
    :cond_194
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleAuthTimeout()V

    goto/16 :goto_7

    .line 251
    :catch_199
    move-exception v1

    goto :goto_143
.end method

.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v0, "gatt"

    const-string v1, "disconnect requested"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 279
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 280
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 281
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_1f

    .line 283
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStop()V

    .line 285
    :cond_1f
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 286
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 287
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 289
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 290
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 292
    return-void
.end method

.method getGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getHrEventCount()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyCount51()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    return v0
.end method

.method public getNotifyCount52()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    return v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    return v0
.end method

.method getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 160
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 168
    if-eqz p2, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 168
    :cond_3c
    const-string v0, "null"

    goto :goto_25
.end method

.method logHex(Ljava/lang/String;[BI)V
    .registers 4

    .prologue
    .line 164
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->logHex(Ljava/lang/String;[BI)V

    .line 165
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-nez v0, :cond_13

    .line 948
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 952
    :cond_13
    return-void
.end method

.method onBandAckTimeout()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAckTimeout()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 348
    const-string v0, "ack"

    const-string v1, "band ACK timeout \u2014 continuing"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    .line 351
    :cond_14
    return-void
.end method

.method onConfigToStartDelay()V
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    .line 554
    :cond_c
    :goto_c
    return-void

    .line 552
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 553
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startStallWatch()V

    goto :goto_c
.end method

.method onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .prologue
    .line 403
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 404
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 405
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 406
    const-string v0, "gatt"

    const-string v1, "chars 51/52 ready"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method onGattConnected(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 355
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 356
    return-void
.end method

.method onGattDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 380
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 381
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 382
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 383
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 384
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 388
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 389
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 391
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 392
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_45

    .line 393
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 394
    const-string v0, "gatt"

    const-string v1, "unexpected drop \u2014 reconnect in 2s"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 399
    :goto_44
    return-void

    .line 398
    :cond_45
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_44
.end method

.method onGattNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 5

    .prologue
    .line 443
    if-eqz p1, :cond_1d

    move-object v0, p1

    :goto_3
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 444
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 445
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 446
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    .line 450
    :cond_19
    :goto_19
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 451
    return-void

    .line 443
    :cond_1d
    const-string v0, ""

    goto :goto_3

    .line 447
    :cond_20
    const-string v0, "52"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 448
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    goto :goto_19
.end method

.method onGattSendAuthNonce()V
    .registers 1

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendAuthPhoneNonce()V

    .line 440
    return-void
.end method

.method onGattState(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method onGattWriteDone()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onWriteFinished()V

    .line 459
    return-void
.end method

.method onKeepaliveTick()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 847
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_f

    .line 872
    :cond_e
    :goto_e
    return-void

    .line 850
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 851
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5a

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5a

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    .line 853
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4f

    .line 854
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 855
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 retry START once"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 857
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 859
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    goto :goto_e

    .line 862
    :cond_4f
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    goto :goto_e

    .line 866
    :cond_5a
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_74

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_74

    .line 867
    const-string v0, "health"

    const-string v1, "HR stall \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    goto :goto_e

    .line 871
    :cond_74
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    goto :goto_e
.end method

.method onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .prologue
    .line 314
    const-string v0, "gatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    if-nez p3, :cond_2f

    if-lez p2, :cond_2f

    .line 317
    iput p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 319
    :cond_2f
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 320
    return-void
.end method

.method onMtuFallback()V
    .registers 3

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v0, v1, :cond_f

    .line 335
    :cond_e
    :goto_e
    return-void

    .line 333
    :cond_f
    const-string v0, "gatt"

    const-string v1, "no MTU callback in 2500ms \u2014 discovering anyway"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_e
.end method

.method onPostAuthInitComplete()V
    .registers 2

    .prologue
    .line 302
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_c

    .line 304
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 306
    :cond_c
    return-void
.end method

.method onReconnectTick()V
    .registers 4

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 918
    :cond_c
    :goto_c
    return-void

    .line 916
    :cond_d
    const-string v0, "gatt"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method scheduleBandAckTimeout()V
    .registers 5

    .prologue
    .line 338
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void
.end method

.method scheduleMtuFallback(Landroid/bluetooth/BluetoothGatt;)V
    .registers 6

    .prologue
    .line 324
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    .line 325
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method

.method sendInitCommand(II[B)V
    .registers 5

    .prologue
    .line 309
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object v0

    .line 310
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 311
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 149
    return-void
.end method

.method public startRealtime()V
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 296
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 297
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 299
    :cond_12
    return-void
.end method

.method writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_a

    :cond_8
    move v0, v1

    .line 483
    :cond_9
    :goto_9
    return v0

    .line 466
    :cond_a
    array-length v2, p3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    add-int/lit8 v3, v3, -0x3

    if-le v2, v3, :cond_3c

    .line 467
    const-string v2, "write"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "B > mtu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-3 (may be truncated)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_3c
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 470
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 472
    :try_start_42
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_5c

    move-result v2

    if-nez v2, :cond_9

    .line 477
    :goto_48
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 478
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 480
    :try_start_4f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_54

    move-result v0

    goto :goto_9

    .line 481
    :catch_54
    move-exception v0

    .line 482
    const-string v2, "writeFrame"

    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 483
    goto :goto_9

    .line 475
    :catch_5c
    move-exception v0

    goto :goto_48
.end method
