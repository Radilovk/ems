.class public Lcom/clj/fastble/bluetooth/BleBluetooth;
.super Ljava/lang/Object;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;,
        Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;
    }
.end annotation


# instance fields
.field private final bleDevice:Lcom/clj/fastble/data/BleDevice;

.field private bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

.field private final bleIndicateCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleIndicateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;

.field private final bleNotifyCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final bleReadCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleReadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;

.field private final bleWriteCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleWriteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private connectRetryCount:I

.field private coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private isActiveDisconnect:Z

.field private lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

.field private final mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    .line 53
    new-instance v1, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    .line 54
    iput v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    .line 358
    new-instance v0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/BleBluetooth$1;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 57
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    return-void
.end method

.method static synthetic access$300(Lcom/clj/fastble/bluetooth/BleBluetooth;)I
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    return v0
.end method

.method static synthetic access$304(Lcom/clj/fastble/bluetooth/BleBluetooth;)I
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/clj/fastble/bluetooth/BleBluetooth;Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;
    .param p1, "x1"    # Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 39
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleGattCallback;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/data/BleDevice;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/clj/fastble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 39
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$900(Lcom/clj/fastble/bluetooth/BleBluetooth;)Z
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 39
    iget-boolean v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    return v0
.end method

.method static synthetic access$902(Lcom/clj/fastble/bluetooth/BleBluetooth;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    return p1
.end method

.method private declared-synchronized closeBluetoothGatt()V
    .locals 1

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disconnectGatt()V
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshDeviceCache()V
    .locals 4

    monitor-enter p0

    .line 220
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 221
    .local v0, "refresh":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 223
    .local v1, "success":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshDeviceCache, is success:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "refresh":Ljava/lang/reflect/Method;
    .end local v1    # "success":Z
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occur while refreshing device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConnectGattCallback(Lcom/clj/fastble/callback/BleGattCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleGattCallback;

    monitor-enter p0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "callback":Lcom/clj/fastble/callback/BleGattCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addIndicateCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleIndicateCallback;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bleIndicateCallback"    # Lcom/clj/fastble/callback/BleIndicateCallback;

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "bleIndicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMtuChangedCallback(Lcom/clj/fastble/callback/BleMtuChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleMtuChangedCallback;

    monitor-enter p0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "callback":Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addNotifyCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bleNotifyCallback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "bleNotifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addReadCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bleReadCallback"    # Lcom/clj/fastble/callback/BleReadCallback;

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "bleReadCallback":Lcom/clj/fastble/callback/BleReadCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRssiCallback(Lcom/clj/fastble/callback/BleRssiCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleRssiCallback;

    monitor-enter p0

    .line 116
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "callback":Lcom/clj/fastble/callback/BleRssiCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addWriteCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bleWriteCallback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "bleWriteCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCharacterCallback()V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Lcom/clj/fastble/callback/BleGattCallback;

    monitor-enter p0

    .line 147
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    .end local p2    # "autoConnect":Z
    .end local p3    # "callback":Lcom/clj/fastble/callback/BleGattCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 4
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Lcom/clj/fastble/callback/BleGattCallback;
    .param p4, "connectRetryCount"    # I

    monitor-enter p0

    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nautoConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nconnectCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 159
    if-nez p4, :cond_0

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    .line 163
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->addConnectGattCallback(Lcom/clj/fastble/callback/BleGattCallback;)V

    .line 165
    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1, p2, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleGattCallback;->onStartConnect()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 180
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clj/fastble/BleManager;->getConnectOverTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    nop

    .end local v0    # "message":Landroid/os/Message;
    goto :goto_1

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    .line 184
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    .line 185
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    .line 186
    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 187
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getMultipleBluetoothController()Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    .line 188
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    new-instance v1, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "GATT connect exception occurred!"

    invoke-direct {v1, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/clj/fastble/callback/BleGattCallback;->onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    .line 192
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    .end local p1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    .end local p2    # "autoConnect":Z
    .end local p3    # "callback":Lcom/clj/fastble/callback/BleGattCallback;
    .end local p4    # "connectRetryCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_IDLE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 202
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    .line 203
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    .line 204
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    .line 205
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeConnectGattCallback()V

    .line 206
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeRssiCallback()V

    .line 207
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeMtuChangedCallback()V

    .line 208
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->clearCharacterCallback()V

    .line 209
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    .line 196
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    .line 197
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 195
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;
    .locals 1

    .line 61
    new-instance v0, Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/BleConnector;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    return-object v0
.end method

.method public declared-synchronized removeConnectGattCallback()V
    .locals 1

    monitor-enter p0

    .line 69
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIndicateCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    .end local p1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMtuChangedCallback()V
    .locals 1

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNotifyCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeReadCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    .end local p1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRssiCallback()V
    .locals 1

    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWriteCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local p0    # "this":Lcom/clj/fastble/bluetooth/BleBluetooth;
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    .end local p1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
