.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
.super Ljava/lang/Object;
.source "XiaomiBandBleClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;


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

.field private static final BLE_BUILD_TAG:Ljava/lang/String; = "v1.1.55-ble"

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

.field private static final STATUS_POLL_MS:J = 0x7530L

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

.field private firstRealtimeEventMs:J

.field private frameEncrypt:Z

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private final gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

.field private gattServicesReady:Z

.field private hrEventCount:I

.field private lastCalories:I

.field private lastF3:I

.field private lastF5:I

.field private lastHrEventMs:J

.field private lastNotifyChar:Ljava/lang/String;

.field private lastRawHr:I

.field private lastRealtimeEventMs:J

.field private lastState:Ljava/lang/String;

.field private lastStatusPollMs:J

.field private lastSteps:I

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

.field private realtimeEventCount:I

.field private realtimeStartRetries:I

.field private realtimeStarted:Z

.field private reconnectRunnable:Ljava/lang/Runnable;

.field private refreshCache:Z

.field private session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

.field private stallCheckRunnable:Ljava/lang/Runnable;

.field private streamStartMs:J

.field private targetMac:Ljava/lang/String;

.field private userRequestedDisconnect:Z

.field private final writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 117
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

    .line 107
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 108
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 109
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 110
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 111
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 117
    return-void
.end method

.method private beginRealtimeStreaming()V
    .locals 4

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_0

    .line 649
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 454
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-eqz v0, :cond_1

    .line 455
    :cond_0
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

    .line 482
    :goto_0
    return-void

    .line 459
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 460
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 462
    const-string v0, "discovering"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 463
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    if-eqz v0, :cond_2

    .line 464
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    .line 466
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 467
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    const-string v1, "gatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache refresh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v1, "discoverServices"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :catch_1
    move-exception v0

    .line 470
    const-string v0, "gatt"

    const-string v1, "cache refresh not available"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :catch_2
    move-exception v0

    .line 479
    const-string v1, "discoverServices"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    const-string v0, "service_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static buildAuthDeviceInfo()[B
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 956
    const/4 v0, 0x5

    new-array v0, v0, [[B

    .line 957
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 958
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "XEMS"

    .line 959
    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xe0

    .line 960
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "EN"

    .line 961
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v6

    .line 956
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static bytesField(Ljava/util/Map;I)[B
    .locals 3
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

    .line 1141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-nez v1, :cond_1

    .line 1143
    :cond_0
    const/4 v0, 0x0

    .line 1145
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1071
    if-nez p0, :cond_0

    .line 1072
    const-string v0, ""

    .line 1078
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 1075
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 1076
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

    .line 1075
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1078
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cancelAuthTimeout()V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1041
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1042
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 1045
    :cond_0
    return-void
.end method

.method private cancelReconnect()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1064
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1065
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 1068
    :cond_0
    return-void
.end method

.method private clearChunks()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 689
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 690
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 691
    return-void
.end method

.method private decrypt([B)[B
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object v0

    return-object v0
.end method

.method private decryptInbound([B)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 772
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 773
    if-nez v1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    array-length v2, p1

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 780
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 781
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [B

    .line 782
    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v3, v1, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_1
    throw v0
.end method

.method private disconnectGatt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 599
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 602
    :goto_1
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 604
    :cond_0
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 605
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 606
    return-void

    .line 600
    :catch_0
    move-exception v0

    goto :goto_1

    .line 596
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBuildTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "v1.1.55-ble"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 123
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAuth(Ljava/util/Map;I)V
    .locals 3
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

    .line 834
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1

    .line 836
    :try_start_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleWatchNonce(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string v1, "auth_nonce"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 839
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 844
    const-string v0, "auth"

    const-string v1, "userid step (not final)"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_2
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_0

    .line 848
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 849
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 850
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 852
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 854
    :cond_3
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 855
    const-string v0, "authenticated"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 857
    const-string v0, "auth"

    const-string v1, "success frameEncrypt=true encIndex=1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->start()V

    goto :goto_0
.end method

.method private handleCommand([B)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 794
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 795
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 796
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 797
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

    .line 798
    if-eq v1, v8, :cond_0

    .line 799
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

    .line 800
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    if-ne v1, v8, :cond_3

    .line 803
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_1

    const/4 v1, 0x5

    if-ne v2, v1, :cond_2

    .line 805
    :cond_1
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

    .line 831
    :goto_0
    return-void

    .line 808
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleAuth(Ljava/util/Map;I)V

    goto :goto_0

    .line 811
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 812
    const-string v0, "remote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_4
    if-ne v1, v9, :cond_5

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 816
    const-string v0, "status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " worn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 818
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_5
    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 822
    const/16 v1, 0x2f

    if-ne v2, v1, :cond_6

    .line 823
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleRealtimeStats(Ljava/util/Map;)V

    goto :goto_0

    .line 825
    :cond_6
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

    goto/16 :goto_0

    .line 829
    :cond_7
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

    .line 830
    const-string v0, "cmd_raw"

    const/16 v1, 0x30

    invoke-virtual {p0, v0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    goto/16 :goto_0
.end method

.method private handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 694
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    if-eqz p1, :cond_3

    .line 698
    :goto_1
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 699
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v2

    .line 700
    const-string v0, "ack"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    iget v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    if-eqz v0, :cond_2

    .line 702
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

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAck()V

    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    goto :goto_0

    .line 697
    :cond_3
    const-string p1, ""

    goto :goto_1

    .line 708
    :cond_4
    const-string v0, "chunk_start"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    iget v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    iget-boolean v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    invoke-virtual {v0, p2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    goto :goto_0

    .line 715
    :cond_5
    const-string v0, "chunk_data"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 717
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 718
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v3, v5, :cond_7

    .line 719
    :cond_6
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

    goto/16 :goto_0

    .line 722
    :cond_7
    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 724
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    invoke-virtual {v2, p2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 725
    new-array v2, v8, [B

    move v3, v4

    move-object v5, v2

    .line 726
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v3, v2, :cond_9

    .line 727
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 728
    if-eqz v2, :cond_8

    .line 729
    const/4 v7, 0x2

    new-array v7, v7, [[B

    aput-object v5, v7, v8

    aput-object v2, v7, v4

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 726
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 732
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 735
    if-nez v6, :cond_a

    .line 736
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

    goto/16 :goto_0

    .line 739
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_b

    .line 741
    :try_start_0
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 747
    :cond_b
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    goto/16 :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    const-string v1, "chunk_decrypt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 751
    :cond_c
    const-string v0, "single"

    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    invoke-virtual {v0, p2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 753
    if-nez v6, :cond_d

    .line 754
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

    goto/16 :goto_0

    .line 757
    :cond_d
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 758
    iget-boolean v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v1, :cond_e

    .line 760
    :try_start_1
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 767
    :cond_e
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    goto/16 :goto_0

    .line 761
    :catch_1
    move-exception v1

    .line 762
    const-string v2, "decrypt"

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 763
    const-string v1, "decrypt_fail"

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    goto/16 :goto_0
.end method

.method private handleRealtimeStats(Ljava/util/Map;)V
    .locals 13
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
    .line 900
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 901
    if-nez v0, :cond_1

    .line 902
    const-string v0, "hr"

    const-string v1, "no health field"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 906
    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 907
    if-nez v0, :cond_2

    .line 908
    const-string v0, "hr"

    const-string v1, "no realTimeStats field"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_2
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v4

    .line 912
    const/4 v0, 0x4

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v5

    .line 913
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v6

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 915
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 916
    :goto_1
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 917
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 918
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    .line 920
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    .line 921
    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 922
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 923
    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 924
    const/4 v0, 0x5

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 925
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 928
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 929
    const/4 v11, 0x1

    if-lt v1, v11, :cond_5

    const/4 v11, 0x6

    if-le v1, v11, :cond_4

    .line 932
    :cond_5
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

    if-eqz v1, :cond_7

    .line 933
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 932
    :goto_3
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 915
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto/16 :goto_1

    .line 933
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 936
    :cond_8
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

    .line 937
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

    .line 938
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

    .line 936
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
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

    .line 940
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

    .line 939
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 942
    if-nez v5, :cond_9

    .line 943
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    :cond_9
    if-lez v5, :cond_0

    const/16 v0, 0xdc

    if-gt v5, v0, :cond_0

    .line 947
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 948
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_0
.end method

.method private handleWatchNonce(Ljava/util/Map;)V
    .locals 9
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

    .line 863
    invoke-static {p1, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 864
    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no auth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 868
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 869
    if-nez v0, :cond_1

    .line 870
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no watchNonce"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_1
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 873
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 874
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 875
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 876
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing nonce/hmac"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 879
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 880
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v3, v6, [[B

    aput-object v1, v3, v7

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v4, v3, v5

    .line 881
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v3

    .line 880
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v2

    .line 882
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 883
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hmac mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v2, v6, [[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v3, v2, v7

    aput-object v1, v2, v5

    .line 886
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 885
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 887
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->buildAuthDeviceInfo()[B

    move-result-object v1

    .line 888
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v7, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 890
    new-array v2, v6, [[B

    .line 891
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v2, v7

    .line 892
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    .line 890
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 893
    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 894
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 895
    const/16 v1, 0x1b

    invoke-static {v5, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 896
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 897
    return-void
.end method

.method private static intField(Ljava/util/Map;I)I
    .locals 3
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

    .line 1133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1134
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1137
    :goto_0
    return v0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static isValidMac(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1105
    :cond_0
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    :cond_1
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static makeCommand(II[B)[B
    .locals 1

    .prologue
    .line 965
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static makeTypedCommand(II[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 969
    new-array v0, v3, [[B

    .line 970
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 971
    invoke-static {v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 969
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 972
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 973
    new-array v1, v3, [[B

    aput-object v0, v1, v4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 975
    :cond_0
    return-object v0
.end method

.method private notifyConnected(Z)V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 1101
    :cond_0
    return-void
.end method

.method private static parseAuthKey(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x10

    .line 1111
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1128
    :goto_0
    return-object v0

    .line 1114
    :cond_0
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

    .line 1115
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1118
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    move-object v0, v1

    .line 1119
    goto :goto_0

    .line 1121
    :cond_3
    new-array v2, v6, [B

    .line 1123
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_4

    .line 1124
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 1126
    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1128
    goto :goto_0
.end method

.method private scheduleAuthTimeout()V
    .locals 4

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 1034
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 1035
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1036
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    return-void
.end method

.method private scheduleReconnect()V
    .locals 4

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 1057
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 1058
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1059
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1060
    return-void
.end method

.method private scheduleStallCheck()V
    .locals 4

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1021
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendAuthPhoneNonce()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 609
    const-string v0, "auth"

    const-string v1, "send phone nonce"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 611
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 612
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 613
    const/16 v1, 0x1a

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 615
    return-void
.end method

.method private sendCommandInternal([B)V
    .locals 3

    .prologue
    .line 672
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 676
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildEncFrame([BI)[B

    move-result-object v0

    .line 680
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 685
    :goto_1
    return-void

    .line 678
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    const-string v1, "sendCommand"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendRealtimeStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 618
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_0

    .line 619
    const-string v0, "health"

    const-string v1, "skip duplicate START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-nez v0, :cond_1

    .line 623
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 624
    const-string v0, "auth"

    const-string v1, "force frameEncrypt before realtime"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 627
    :goto_1
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

    .line 628
    const/16 v0, 0x8

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 629
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 630
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 632
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    goto :goto_0

    .line 626
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private sendRealtimeStop()V
    .locals 3

    .prologue
    .line 636
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/16 v0, 0x8

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 638
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 640
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1090
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 1091
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 1095
    :cond_0
    return-void

    .line 1090
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method private startStallWatch()V
    .locals 4

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 1011
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 1012
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1013
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    return-void
.end method

.method private stopStallWatch()V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1027
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 1030
    :cond_0
    return-void
.end method


# virtual methods
.method beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "gatt"

    const-string v1, "skip duplicate notify setup"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_0
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 524
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charActivityUuid()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {p4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 526
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charUploadUuid()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {p4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 527
    if-eqz v0, :cond_1

    .line 528
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v2, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 529
    const-string v0, "gatt"

    const-string v2, "notify 53 enabled"

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    if-eqz v1, :cond_2

    .line 532
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 533
    const-string v0, "gatt"

    const-string v1, "notify 55 enabled"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_2
    const-string v0, "gatt"

    const-string v1, "notify 51/52 enabled"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method cancelBandAckTimeout()V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x17

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 235
    const-string v0, "build"

    const-string v1, "v1.1.55-ble"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
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

    const-string v1, "v1.1.55-ble"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "band-raw.csv"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
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

    .line 240
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 241
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    .line 242
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    .line 243
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 244
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 245
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 246
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 247
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 248
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 250
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->logPermissionState(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    .line 252
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 253
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    .line 255
    :cond_2
    const-string v0, "bad_auth_key"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 259
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 260
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 261
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 262
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 263
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 264
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 265
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 266
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    .line 267
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 269
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 270
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 271
    iput v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 272
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 273
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 275
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 276
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 277
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 278
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 279
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 280
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 282
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 284
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_5
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 288
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

    .line 289
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 290
    if-nez v0, :cond_6

    .line 291
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 296
    const-string v1, "no_bluetooth"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 303
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 312
    :try_start_2
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
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 316
    :goto_2
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_8

    .line 317
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 331
    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_9

    .line 332
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :catch_2
    move-exception v0

    .line 308
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 322
    :catch_3
    move-exception v0

    .line 323
    const-string v1, "connectGatt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :catch_4
    move-exception v0

    .line 327
    const-string v1, "connectGatt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_9
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleAuthTimeout()V

    goto/16 :goto_0

    .line 313
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    const-string v0, "gatt"

    const-string v1, "disconnect requested"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 341
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 342
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 343
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 344
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStop()V

    .line 347
    :cond_0
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 348
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 349
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 351
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 352
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 354
    return-void
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getHrEventCount()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    return v0
.end method

.method public getLastCalories()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRawHr()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    return v0
.end method

.method public getNotifyCount52()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    return v0
.end method

.method public getNotifyEventCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .locals 6

    .prologue
    .line 162
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "BLE"

    return-object v0
.end method

.method getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 221
    if-eqz p2, :cond_0

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

    .line 222
    :goto_0
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

    .line 223
    return-void

    .line 221
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method logHex(Ljava/lang/String;[BI)V
    .locals 0

    .prologue
    .line 217
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->logHex(Ljava/lang/String;[BI)V

    .line 218
    return-void
.end method

.method onAuthTimeout()V
    .locals 2

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-nez v0, :cond_0

    .line 1083
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 1087
    :cond_0
    return-void
.end method

.method onBandAckTimeout()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAckTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "ack"

    const-string v1, "band ACK timeout \u2014 continuing"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    .line 446
    :cond_0
    return-void
.end method

.method onConfigToStartDelay()V
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 658
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startStallWatch()V

    goto :goto_0
.end method

.method onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .prologue
    .line 508
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 509
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 510
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 511
    const-string v0, "gatt"

    const-string v1, "chars 51/52 ready"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method onGattConnected(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 450
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 451
    return-void
.end method

.method onGattDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 485
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 486
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 487
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 488
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 489
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 490
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 493
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 494
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 496
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 497
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 499
    const-string v0, "gatt"

    const-string v1, "unexpected drop \u2014 reconnect in 2s"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onGattNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1

    .prologue
    .line 548
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 549
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 550
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    .line 555
    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 556
    return-void

    .line 548
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 552
    :cond_2
    const-string v0, "52"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    goto :goto_1
.end method

.method onGattSendAuthNonce()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendAuthPhoneNonce()V

    .line 545
    return-void
.end method

.method onGattState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method onGattWriteDone()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onWriteFinished()V

    .line 564
    return-void
.end method

.method onKeepaliveTick()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 979
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 983
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 985
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 986
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 987
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 retry START once"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 989
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 991
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    goto :goto_0

    .line 994
    :cond_2
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    goto :goto_0

    .line 998
    :cond_3
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 999
    const-string v0, "health"

    const-string v1, "HR stall \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    goto :goto_0

    .line 1003
    :cond_4
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1004
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->pollStatus()V

    .line 1006
    :cond_5
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    goto :goto_0
.end method

.method onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .prologue
    .line 409
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

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    if-nez p3, :cond_0

    if-lez p2, :cond_0

    .line 412
    iput p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 415
    return-void
.end method

.method onMtuFallback()V
    .locals 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v0, v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string v0, "gatt"

    const-string v1, "no MTU callback in 2500ms \u2014 discovering anyway"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0
.end method

.method onPostAuthInitComplete()V
    .locals 1

    .prologue
    .line 381
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 385
    :cond_0
    return-void
.end method

.method onReconnectTick()V
    .locals 3

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    const-string v0, "gatt"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method pollStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    .line 390
    const/16 v0, 0x4e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 391
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 392
    return-void
.end method

.method public refreshCacheOnNextConnect()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    .line 359
    return-void
.end method

.method scheduleBandAckTimeout()V
    .locals 4

    .prologue
    .line 433
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    return-void
.end method

.method scheduleMtuFallback(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .prologue
    .line 419
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    .line 420
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    return-void
.end method

.method public sendCommand([B)V
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommandInternal([B)V

    goto :goto_0
.end method

.method sendInitCommand(II[B)V
    .locals 1

    .prologue
    .line 404
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 406
    return-void
.end method

.method sendInitProto([B)V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 397
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 202
    return-void
.end method

.method public startRealtime()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 363
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 366
    :cond_0
    return-void
.end method

.method public stopRealtime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 371
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_0

    .line 372
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 374
    :cond_0
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 375
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "linked"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 378
    :cond_1
    return-void
.end method

.method writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 588
    :cond_1
    :goto_0
    return v0

    .line 571
    :cond_2
    array-length v2, p3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    add-int/lit8 v3, v3, -0x3

    if-le v2, v3, :cond_3

    .line 572
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

    .line 574
    :cond_3
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 575
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 577
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 582
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 583
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 585
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    const-string v2, "writeFrame"

    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 588
    goto :goto_0

    .line 580
    :catch_1
    move-exception v0

    goto :goto_1
.end method
