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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkEncryptedByChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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
    .registers 2

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
    .registers 3

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
    const-string v1, "idle"

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 98
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
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 108
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 109
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 110
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 111
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 117
    return-void
.end method

.method private beginRealtimeStreaming()V
    .registers 5

    .line 640
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-nez v0, :cond_9

    goto :goto_20

    .line 643
    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_e

    .line 644
    return-void

    .line 646
    :cond_e
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 647
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    return-void

    .line 641
    :cond_20
    :goto_20
    return-void
.end method

.method private beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .registers 8

    .line 451
    const-string v0, "discoverServices"

    const-string v1, "gatt"

    if-eqz p1, :cond_6d

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    if-nez v2, :cond_6d

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-eqz v2, :cond_f

    goto :goto_6d

    .line 456
    :cond_f
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 457
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 459
    const-string v2, "discovering"

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 460
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    if-eqz v2, :cond_54

    .line 461
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    .line 463
    :try_start_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "refresh"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 464
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache refresh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_4e

    .line 468
    goto :goto_54

    .line 466
    :catchall_4e
    move-exception v2

    .line 467
    const-string v2, "cache refresh not available"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_54
    :goto_54
    :try_start_54
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_57} :catch_62
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 478
    :goto_57
    goto :goto_6c

    .line 475
    :catchall_58
    move-exception p1

    .line 476
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    const-string p1, "service_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_6c

    .line 472
    :catch_62
    move-exception p1

    .line 473
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    goto :goto_57

    .line 479
    :goto_6c
    return-void

    .line 452
    :cond_6d
    :goto_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip discover (ready="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " requested="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method private static buildAuthDeviceInfo()[B
    .registers 5

    .line 953
    const/4 v0, 0x5

    new-array v1, v0, [[B

    .line 954
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 955
    const/4 v3, 0x2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 956
    const/4 v2, 0x3

    const-string v4, "XEMS"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 957
    const/4 v3, 0x4

    const/16 v4, 0xe0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 958
    const-string v2, "EN"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v3

    .line 953
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

    .line 1138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1139
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

    .line 1142
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 1140
    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 6

    .line 1068
    if-nez p0, :cond_5

    .line 1069
    const-string p0, ""

    return-object p0

    .line 1071
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1072
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    .line 1073
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

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1075
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelAuthTimeout()V
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1038
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1039
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 1042
    :cond_15
    return-void
.end method

.method private cancelReconnect()V
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1061
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1062
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 1065
    :cond_15
    return-void
.end method

.method private clearChunks()V
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 686
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 687
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 688
    return-void
.end method

.method private decrypt([B)[B
    .registers 2

    .line 787
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object p1

    return-object p1
.end method

.method private decryptInbound([B)[B
    .registers 8

    .line 769
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 770
    if-eqz v0, :cond_31

    .line 774
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v2, v3, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p1

    .line 775
    :catchall_e
    move-exception v2

    .line 776
    array-length v3, p1

    const/16 v4, 0x8

    if-le v3, v4, :cond_30

    .line 777
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 778
    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    .line 779
    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget-object p1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {p1, v0, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 782
    :cond_30
    throw v2

    .line 771
    :cond_31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no session"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disconnectGatt()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 592
    :try_start_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 594
    goto :goto_a

    .line 593
    :catchall_9
    move-exception v0

    .line 596
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 598
    goto :goto_11

    .line 597
    :catchall_10
    move-exception v0

    .line 599
    :goto_11
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 601
    :cond_13
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 602
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 603
    return-void
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .line 127
    const-string v0, "v1.1.55-ble"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    if-nez v1, :cond_e

    .line 121
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 123
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 119
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

    .line 831
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_14

    .line 833
    :try_start_4
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleWatchNonce(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 837
    goto :goto_13

    .line 834
    :catchall_8
    move-exception p1

    .line 835
    const-string p2, "auth_nonce"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 836
    const-string p1, "auth_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 838
    :goto_13
    return-void

    .line 840
    :cond_14
    const/4 p1, 0x5

    const-string v0, "auth"

    if-ne p2, p1, :cond_1f

    .line 841
    const-string p1, "userid step (not final)"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 844
    :cond_1f
    const/16 p1, 0x1b

    if-ne p2, p1, :cond_48

    .line 845
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 846
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 847
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p2, :cond_33

    .line 848
    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 849
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    const/4 v1, 0x0

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 851
    :cond_33
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 852
    const-string p2, "authenticated"

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 854
    const-string p1, "success frameEncrypt=true encIndex=1"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->start()V

    .line 857
    :cond_48
    return-void
.end method

.method private handleCommand([B)V
    .registers 12

    .line 791
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 792
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 793
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v4

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "cmd"

    invoke-virtual {p0, v7, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-eq v2, v1, :cond_5b

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    const-string v8, "band-raw.csv"

    invoke-static {v8, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_5b
    if-ne v2, v1, :cond_87

    .line 800
    iget-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz p1, :cond_83

    const/16 p1, 0x1a

    if-eq v4, p1, :cond_6c

    const/16 p1, 0x1b

    if-eq v4, p1, :cond_6c

    const/4 p1, 0x5

    if-ne v4, p1, :cond_83

    .line 802
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore echo sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_83
    invoke-direct {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleAuth(Ljava/util/Map;I)V

    .line 806
    return-void

    .line 808
    :cond_87
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "music sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 812
    :cond_a4
    if-ne v2, v3, :cond_df

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 813
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " worn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " off="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-void

    .line 818
    :cond_df
    const/16 v1, 0x8

    if-ne v2, v1, :cond_102

    .line 819
    const/16 p1, 0x2f

    if-ne v4, p1, :cond_eb

    .line 820
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleRealtimeStats(Ljava/util/Map;)V

    goto :goto_101

    .line 822
    :cond_eb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "health"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :goto_101
    return-void

    .line 826
    :cond_102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/16 v0, 0x30

    const-string v1, "cmd_raw"

    invoke-virtual {p0, v1, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 828
    return-void
.end method

.method private handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 12

    .line 691
    if-eqz p3, :cond_1a6

    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    goto/16 :goto_1a6

    .line 694
    :cond_8
    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const-string p1, ""

    .line 695
    :goto_d
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 696
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p3

    .line 697
    iget-object v1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v2, "ack"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " on "

    if-eqz v1, :cond_4e

    .line 698
    iget p2, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    if-eqz p2, :cond_43

    .line 699
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NACK result="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->result:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_43
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAck()V

    .line 702
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    .line 703
    return-void

    .line 705
    :cond_4e
    iget-object v1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v2, "chunk_start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    iget v1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->numChunks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    iget-boolean p3, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    invoke-virtual {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 710
    return-void

    .line 712
    :cond_80
    iget-object v1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v2, "chunk_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 713
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 714
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 715
    const-string v4, "chunk"

    if-eqz v1, :cond_139

    if-eqz v2, :cond_139

    iget v5, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_aa

    goto/16 :goto_139

    .line 719
    :cond_aa
    iget v3, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p3, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p3, v3, :cond_138

    .line 721
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    invoke-virtual {p3, p2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 722
    const/4 p2, 0x0

    new-array p3, p2, [B

    .line 723
    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_cb
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_eb

    .line 724
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 725
    if-eqz v6, :cond_e8

    .line 726
    const/4 v7, 0x2

    new-array v7, v7, [[B

    aput-object p3, v7, p2

    aput-object v6, v7, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p3

    .line 723
    :cond_e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_cb

    .line 729
    :cond_eb
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkMaps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkCounts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->chunkEncryptedByChar:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 732
    if-nez v0, :cond_11d

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignored "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "B payload on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void

    .line 736
    :cond_11d
    if-eqz p2, :cond_135

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_135

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p1, :cond_135

    .line 738
    :try_start_129
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decrypt([B)[B

    move-result-object p3
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_12e

    .line 742
    goto :goto_135

    .line 739
    :catchall_12e
    move-exception p1

    .line 740
    const-string p2, "chunk_decrypt"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    return-void

    .line 744
    :cond_135
    :goto_135
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 746
    :cond_138
    return-void

    .line 716
    :cond_139
    :goto_139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected chunk "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void

    .line 748
    :cond_156
    iget-object v1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->kind:Ljava/lang/String;

    const-string v2, "single"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 749
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    invoke-virtual {v1, p2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueAckTo(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 750
    if-nez v0, :cond_185

    .line 751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "single frame on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " acked, not a command channel"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "notify"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void

    .line 754
    :cond_185
    iget-object p1, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->payload:[B

    .line 755
    iget-boolean p2, p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->encrypted:Z

    if-eqz p2, :cond_1a2

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz p2, :cond_1a2

    .line 757
    :try_start_18f
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->decryptInbound([B)[B

    move-result-object p1
    :try_end_193
    .catchall {:try_start_18f .. :try_end_193} :catchall_194

    .line 762
    goto :goto_1a2

    .line 758
    :catchall_194
    move-exception p2

    .line 759
    const-string p3, "decrypt"

    invoke-virtual {p0, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 760
    const/16 p2, 0x20

    const-string p3, "decrypt_fail"

    invoke-virtual {p0, p3, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logHex(Ljava/lang/String;[BI)V

    .line 761
    return-void

    .line 764
    :cond_1a2
    :goto_1a2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleCommand([B)V

    .line 766
    :cond_1a5
    return-void

    .line 692
    :cond_1a6
    :goto_1a6
    return-void
.end method

.method private handleRealtimeStats(Ljava/util/Map;)V
    .registers 19
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

    .line 897
    move-object/from16 v0, p0

    const/16 v1, 0xa

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 898
    const-string v2, "hr"

    if-nez v1, :cond_14

    .line 899
    const-string v1, "no health field"

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return-void

    .line 902
    :cond_14
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v1

    .line 903
    const/16 v3, 0x27

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 904
    if-nez v1, :cond_26

    .line 905
    const-string v1, "no realTimeStats field"

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void

    .line 908
    :cond_26
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v1

    .line 909
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v3

    .line 910
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v5

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 912
    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_43

    sub-long v8, v6, v8

    goto :goto_44

    :cond_43
    move-wide v8, v10

    .line 913
    :goto_44
    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 914
    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    cmp-long v14, v12, v10

    if-nez v14, :cond_4e

    .line 915
    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    .line 917
    :cond_4e
    iget v10, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    add-int/2addr v10, v4

    iput v10, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    .line 918
    iput v5, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 919
    const/4 v10, 0x2

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v11

    iput v11, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 920
    const/4 v11, 0x3

    invoke-static {v1, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v12

    iput v12, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 921
    const/4 v12, 0x5

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v13

    iput v13, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 922
    iput v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 923
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_79
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/4 v12, 0x6

    if-eqz v15, :cond_d8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 925
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 926
    if-lt v11, v4, :cond_97

    if-gt v11, v12, :cond_97

    .line 927
    const/4 v11, 0x3

    const/4 v12, 0x5

    goto :goto_79

    .line 929
    :cond_97
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, [B

    if-eqz v11, :cond_bf

    .line 930
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    goto :goto_cd

    :cond_bf
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 929
    :goto_cd
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3b

    .line 931
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 932
    const/4 v11, 0x3

    const/4 v12, 0x5

    goto :goto_79

    .line 933
    :cond_d8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {v1, v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-static {v1, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 933
    const-string v7, "band-realtime.csv"

    invoke-static {v7, v6}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw hr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " steps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cal="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " f3="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " f5="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->intField(Ljava/util/Map;I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dt="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 939
    if-nez v3, :cond_18a

    .line 940
    const-string v1, "measuring"

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 941
    return-void

    .line 943
    :cond_18a
    if-lez v3, :cond_1a1

    const/16 v1, 0xdc

    if-gt v3, v1, :cond_1a1

    .line 944
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 945
    const-string v1, "streaming"

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 946
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v1, :cond_1a1

    .line 947
    invoke-interface {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    .line 950
    :cond_1a1
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

    .line 860
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 861
    if-eqz p1, :cond_b2

    .line 864
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 865
    const/16 v1, 0x1f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 866
    if-eqz p1, :cond_aa

    .line 869
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p1

    .line 870
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object v2

    .line 871
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 872
    if-eqz v2, :cond_a2

    if-eqz p1, :cond_a2

    .line 875
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 876
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 877
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v5, v3, [[B

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v7, v5, v1

    .line 878
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 877
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v4

    .line 879
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 882
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v4, v3, [[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    aput-object v5, v4, v6

    aput-object v2, v4, v1

    .line 883
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v2

    .line 882
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object p1

    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->buildAuthDeviceInfo()[B

    move-result-object v2

    .line 885
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v4, v5, v6, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 887
    new-array v4, v3, [[B

    .line 888
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v6

    .line 889
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p1

    aput-object p1, v4, v1

    .line 887
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p1

    .line 890
    const/16 v2, 0x20

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 891
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 892
    const/16 v0, 0x1b

    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object p1

    .line 893
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 894
    return-void

    .line 880
    :cond_9a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hmac mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 873
    :cond_a2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "missing nonce/hmac"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 867
    :cond_aa
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no watchNonce"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 862
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

    .line 1130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1131
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

    .line 1134
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1132
    :cond_27
    :goto_27
    return p1
.end method

.method private static isValidMac(Ljava/lang/String;)Z
    .registers 2

    .line 1101
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 1104
    :cond_9
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1102
    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method private static makeCommand(II[B)[B
    .registers 3

    .line 962
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static makeTypedCommand(II[B)[B
    .registers 7

    .line 966
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 967
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 968
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 966
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 969
    if-eqz p2, :cond_24

    array-length p1, p2

    if-lez p1, :cond_24

    .line 970
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 972
    :cond_24
    return-object p0
.end method

.method private notifyConnected(Z)V
    .registers 3

    .line 1095
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_7

    .line 1096
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 1098
    :cond_7
    return-void
.end method

.method private static parseAuthKey(Ljava/lang/String;)[B
    .registers 7

    .line 1108
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1109
    return-object v0

    .line 1111
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

    .line 1112
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1113
    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1115
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_36

    .line 1116
    return-object v0

    .line 1118
    :cond_36
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 1120
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_51

    .line 1121
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

    .line 1120
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1124
    :catchall_4f
    move-exception p0

    .line 1125
    return-object v0

    .line 1123
    :cond_51
    return-object v2
.end method

.method private scheduleAuthTimeout()V
    .registers 5

    .line 1030
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 1031
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    .line 1032
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1033
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1034
    return-void
.end method

.method private scheduleReconnect()V
    .registers 5

    .line 1053
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 1054
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 1055
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1056
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1057
    return-void
.end method

.method private scheduleStallCheck()V
    .registers 5

    .line 1014
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 1015
    return-void

    .line 1017
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1018
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    return-void
.end method

.method private sendAuthPhoneNonce()V
    .registers 4

    .line 606
    const-string v0, "auth"

    const-string v1, "send phone nonce"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 608
    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 609
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 610
    const/16 v2, 0x1a

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V

    .line 612
    return-void
.end method

.method private sendCommandInternal([B)V
    .registers 5

    .line 669
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_2b

    .line 670
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object p1

    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildEncFrame([BI)[B

    move-result-object p1

    .line 674
    goto :goto_2f

    .line 675
    :cond_2b
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->buildPlainFrame([B)[B

    move-result-object p1

    .line 677
    :goto_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueCommand([B)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 681
    goto :goto_40

    .line 678
    :catchall_35
    move-exception p1

    .line 679
    const-string v0, "sendCommand"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    const-string p1, "send_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 682
    :goto_40
    return-void
.end method

.method private sendRealtimeStart()V
    .registers 6

    .line 615
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    const-string v1, "health"

    if-eqz v0, :cond_c

    .line 616
    const-string v0, "skip duplicate START"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void

    .line 619
    :cond_c
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    if-nez v0, :cond_22

    .line 620
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 621
    const-string v0, "auth"

    const-string v3, "force frameEncrypt before realtime"

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-eqz v0, :cond_29

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    goto :goto_2a

    :cond_29
    const/4 v0, -0x1

    .line 624
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

    .line 625
    const/16 v0, 0x8

    const/16 v1, 0x2d

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 626
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 627
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 630
    return-void
.end method

.method private sendRealtimeStop()V
    .registers 4

    .line 633
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/16 v0, 0x8

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeCommand(II[B)[B

    move-result-object v0

    .line 635
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 637
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .registers 3

    .line 1087
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    .line 1088
    const-string v0, "state"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_15

    .line 1090
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 1092
    :cond_15
    return-void
.end method

.method private startStallWatch()V
    .registers 5

    .line 1007
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 1008
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 1009
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1010
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    return-void
.end method

.method private stopStallWatch()V
    .registers 3

    .line 1022
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1023
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1024
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stallCheckRunnable:Ljava/lang/Runnable;

    .line 1027
    :cond_15
    return-void
.end method


# virtual methods
.method beginNotificationSetup(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattService;)V
    .registers 7

    .line 513
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    const-string v1, "gatt"

    if-eqz v0, :cond_c

    .line 514
    const-string p1, "skip duplicate notify setup"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void

    .line 517
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 519
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 520
    nop

    .line 521
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charActivityUuid()Ljava/lang/String;

    move-result-object p2

    .line 520
    invoke-static {p4, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 522
    nop

    .line 523
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->charUploadUuid()Ljava/lang/String;

    move-result-object p3

    .line 522
    invoke-static {p4, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;->findOptionalChar(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    .line 524
    if-eqz p2, :cond_37

    .line 525
    iget-object p4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p4, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 526
    const-string p2, "notify 53 enabled"

    invoke-virtual {p0, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_37
    if-eqz p3, :cond_43

    .line 529
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2, p1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueEnableNotify(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 530
    const-string p1, "notify 55 enabled"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_43
    const-string p1, "notify 51/52 enabled"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    new-instance p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;

    invoke-direct {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->enqueueRunnable(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

.method cancelBandAckTimeout()V
    .registers 3

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 226
    const-string v0, "connectGatt"

    const-string v1, "connect_fail"

    if-nez p1, :cond_7

    .line 227
    return-void

    .line 229
    :cond_7
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->gateGattOrNotify(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "no_bt_permission"

    if-nez v2, :cond_13

    .line 230
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 231
    return-void

    .line 233
    :cond_13
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 235
    const-string v2, "build"

    const-string v4, "v1.1.55-ble"

    invoke-virtual {p0, v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# session "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v4, "band-raw.csv"

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "band-realtime.csv"

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    .line 241
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    .line 242
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    .line 243
    const/4 v6, -0x1

    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    .line 244
    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    .line 245
    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    .line 246
    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    .line 247
    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    .line 248
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 250
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->logPermissionState(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    .line 252
    if-eqz p2, :cond_81

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_81
    const-string p1, ""

    :goto_83
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    .line 253
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    .line 254
    if-eqz p1, :cond_184

    array-length p1, p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_94

    goto/16 :goto_184

    .line 258
    :cond_94
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->random:Ljava/util/Random;

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->phoneNonce:[B

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    .line 259
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    .line 260
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelReconnect()V

    .line 261
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 262
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->frameEncrypt:Z

    .line 263
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 264
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    .line 265
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 266
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    .line 267
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    .line 268
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->session:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 269
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 270
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 271
    const/16 p1, 0x17

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 272
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 273
    sget-object p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 275
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 276
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 277
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    .line 278
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 279
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 280
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 281
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 282
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 283
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->isValidMac(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "bad_mac"

    if-nez p2, :cond_ed

    .line 284
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 285
    return-void

    .line 287
    :cond_ed
    const-string p2, "connecting"

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mac="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "connect"

    invoke-virtual {p0, v4, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 290
    const-string v5, "no_bluetooth"

    if-nez p2, :cond_116

    .line 291
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_116
    :try_start_116
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_120

    .line 296
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_121

    .line 297
    return-void

    .line 300
    :cond_120
    goto :goto_122

    .line 299
    :catchall_121
    move-exception v5

    .line 303
    :goto_122
    :try_start_122
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2
    :try_end_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_122 .. :try_end_128} :catch_17f
    .catchall {:try_start_122 .. :try_end_128} :catchall_17a

    .line 310
    nop

    .line 312
    :try_start_129
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bond="

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v4, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_129 .. :try_end_141} :catchall_142

    .line 314
    goto :goto_143

    .line 313
    :catchall_142
    move-exception p3

    .line 316
    :goto_143
    :try_start_143
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p1, :cond_153

    .line 317
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    const/4 v4, 0x2

    invoke-virtual {p2, p1, v2, p3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_15d

    .line 320
    :cond_153
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattCallback:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback;

    invoke-virtual {p2, p1, v2, p3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_15d
    .catch Ljava/lang/SecurityException; {:try_start_143 .. :try_end_15d} :catch_172
    .catchall {:try_start_143 .. :try_end_15d} :catchall_16a

    .line 330
    :goto_15d
    nop

    .line 331
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_166

    .line 332
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_166
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleAuthTimeout()V

    .line 336
    return-void

    .line 326
    :catchall_16a
    move-exception p1

    .line 327
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 329
    return-void

    .line 322
    :catch_172
    move-exception p1

    .line 323
    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 325
    return-void

    .line 307
    :catchall_17a
    move-exception p1

    .line 308
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 309
    return-void

    .line 304
    :catch_17f
    move-exception p1

    .line 305
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 306
    return-void

    .line 255
    :cond_184
    :goto_184
    const-string p1, "bad_auth_key"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public disconnect()V
    .registers 3

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

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_1e

    .line 345
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStop()V

    .line 347
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 348
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 349
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 350
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 351
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnectGatt()V

    .line 352
    const-string v1, "disconnected"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 354
    return-void
.end method

.method getAppContext()Landroid/content/Context;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method getGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getHrEventCount()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->hrEventCount:I

    return v0
.end method

.method public getLastCalories()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRawHr()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .registers 3

    .line 153
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    return v0
.end method

.method public getNotifyCount52()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    return v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .registers 7

    .line 162
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeEventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_19

    iget-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastRealtimeEventMs:J

    iget-wide v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->firstRealtimeEventMs:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_e

    goto :goto_19

    .line 165
    :cond_e
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v0, v0, v5

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 163
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "BLE"

    return-object v0
.end method

.method getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 197
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

    .line 213
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 221
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

    .line 222
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method logHex(Ljava/lang/String;[BI)V
    .registers 4

    .line 217
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->logHex(Ljava/lang/String;[BI)V

    .line 218
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .line 1079
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-nez v0, :cond_13

    .line 1080
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->disconnect()V

    .line 1084
    :cond_13
    return-void
.end method

.method onBandAckTimeout()V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onBandAckTimeout()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 440
    const-string v0, "ack"

    const-string v1, "band ACK timeout \u2014 continuing"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->onCommandAcked()V

    .line 443
    :cond_14
    return-void
.end method

.method onConfigToStartDelay()V
    .registers 2

    .line 651
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    goto :goto_14

    .line 654
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 655
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->startStallWatch()V

    .line 656
    return-void

    .line 652
    :cond_14
    :goto_14
    return-void
.end method

.method onGattCharsReady(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 505
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charRead:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 506
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->charWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 507
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 508
    const-string p1, "gatt"

    const-string p2, "chars 51/52 ready"

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method onGattConnected(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 447
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 448
    return-void
.end method

.method onGattDisconnected()V
    .registers 4

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    .line 483
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 484
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gattServicesReady:Z

    .line 485
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    .line 486
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelBandAckTimeout()V

    .line 487
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->clearChunks()V

    .line 489
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->reset()V

    .line 490
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->stopStallWatch()V

    .line 491
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->cancelAuthTimeout()V

    .line 492
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->clear()V

    .line 493
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyConnected(Z)V

    .line 494
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_45

    .line 495
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 496
    const-string v0, "gatt"

    const-string v1, "unexpected drop \u2014 reconnect in 2s"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 498
    return-void

    .line 500
    :cond_45
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method onGattNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 5

    .line 545
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastNotifyChar:Ljava/lang/String;

    .line 546
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyEventCount:I

    .line 547
    const-string v0, "51"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 548
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount51:I

    goto :goto_2b

    .line 549
    :cond_1d
    const-string v0, "52"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 550
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->notifyCount52:I

    .line 552
    :cond_2b
    :goto_2b
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->handleNotify(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 553
    return-void
.end method

.method onGattSendAuthNonce()V
    .registers 1

    .line 541
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendAuthPhoneNonce()V

    .line 542
    return-void
.end method

.method onGattState(Ljava/lang/String;)V
    .registers 2

    .line 537
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method onGattWriteDone()V
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->writeQueue:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue;->onWriteFinished()V

    .line 561
    return-void
.end method

.method onKeepaliveTick()V
    .registers 11

    .line 976
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-nez v0, :cond_d

    goto :goto_7a

    .line 979
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 980
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    const-string v4, "health"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_53

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_53

    sub-long v2, v0, v2

    const-wide/16 v7, 0x2ee0

    cmp-long v9, v2, v7

    if-lez v9, :cond_53

    .line 982
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_4a

    .line 983
    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStartRetries:I

    .line 984
    const-string v0, "no first 8/47 \u2014 retry START once"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 986
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendRealtimeStart()V

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->streamStartMs:J

    .line 988
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    .line 989
    return-void

    .line 991
    :cond_4a
    const-string v0, "no first 8/47 \u2014 reconnect"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 993
    return-void

    .line 995
    :cond_53
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastHrEventMs:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_6a

    sub-long v2, v0, v2

    const-wide/16 v5, 0x3a98

    cmp-long v7, v2, v5

    if-lez v7, :cond_6a

    .line 996
    const-string v0, "HR stall \u2014 reconnect"

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleReconnect()V

    .line 998
    return-void

    .line 1000
    :cond_6a
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_76

    .line 1001
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->pollStatus()V

    .line 1003
    :cond_76
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->scheduleStallCheck()V

    .line 1004
    return-void

    .line 977
    :cond_7a
    :goto_7a
    return-void
.end method

.method onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gatt"

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    if-nez p3, :cond_2b

    if-lez p2, :cond_2b

    .line 409
    iput p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    .line 411
    :cond_2b
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 412
    return-void
.end method

.method onMtuFallback()V
    .registers 3

    .line 422
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->discoveryRequested:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v0, v1, :cond_d

    goto :goto_1a

    .line 425
    :cond_d
    const-string v0, "gatt"

    const-string v1, "no MTU callback in 2500ms \u2014 discovering anyway"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginServiceDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    .line 427
    return-void

    .line 423
    :cond_1a
    :goto_1a
    return-void
.end method

.method onPostAuthInitComplete()V
    .registers 2

    .line 378
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->setState(Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_c

    .line 380
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 382
    :cond_c
    return-void
.end method

.method onReconnectTick()V
    .registers 4

    .line 1045
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->userRequestedDisconnect:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_22

    .line 1048
    :cond_d
    const-string v0, "gatt"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->targetMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authKey:[B

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1046
    :cond_22
    :goto_22
    return-void
.end method

.method pollStatus()V
    .registers 3

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->lastStatusPollMs:J

    .line 387
    const/4 v0, 0x2

    const/16 v1, 0x4e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 388
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 389
    return-void
.end method

.method public refreshCacheOnNextConnect()V
    .registers 2

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCache:Z

    .line 359
    return-void
.end method

.method scheduleBandAckTimeout()V
    .registers 5

    .line 430
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->bandAckTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method

.method scheduleMtuFallback(Landroid/bluetooth/BluetoothGatt;)V
    .registers 5

    .line 416
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuPendingGatt:Landroid/bluetooth/BluetoothGatt;

    .line 417
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->mtuFallbackTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    return-void
.end method

.method public sendCommand([B)V
    .registers 3

    .line 660
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_7

    goto :goto_b

    .line 663
    :cond_7
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommandInternal([B)V

    .line 664
    return-void

    .line 661
    :cond_b
    :goto_b
    return-void
.end method

.method sendInitCommand(II[B)V
    .registers 4

    .line 401
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->makeTypedCommand(II[B)[B

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 403
    return-void
.end method

.method sendInitProto([B)V
    .registers 2

    .line 393
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 394
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 202
    return-void
.end method

.method public startRealtime()V
    .registers 2

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 363
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->postAuthInit:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 364
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->beginRealtimeStreaming()V

    .line 366
    :cond_12
    return-void
.end method

.method public stopRealtime()V
    .registers 4

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeActive:Z

    .line 371
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->authenticated:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    if-eqz v1, :cond_16

    .line 372
    const/16 v1, 0x8

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendCommand([B)V

    .line 374
    :cond_16
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->realtimeStarted:Z

    .line 375
    return-void
.end method

.method writeFrameNow(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .registers 7

    .line 565
    const/4 v0, 0x0

    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    if-nez p3, :cond_8

    goto :goto_58

    .line 568
    :cond_8
    array-length v1, p3

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_35

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "B > mtu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->attMtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-3 (may be truncated)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_35
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 572
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 574
    :try_start_3c
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_44

    if-eqz v2, :cond_43

    .line 575
    return v1

    .line 578
    :cond_43
    goto :goto_45

    .line 577
    :catchall_44
    move-exception v1

    .line 579
    :goto_45
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 580
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 582
    :try_start_4c
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_51

    return p1

    .line 583
    :catchall_51
    move-exception p1

    .line 584
    const-string p2, "writeFrame"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    return v0

    .line 566
    :cond_58
    :goto_58
    return v0
.end method
