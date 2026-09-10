.class public Lcom/isaigu/gymapp/train/ble/BleDeviceManager;
.super Ljava/lang/Object;
.source "BleDeviceManager.java"


# static fields
.field static bleDeviceList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field static configs:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field static connectCount:I = 0x0

.field static deviceListenerList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/ble/BleDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field static gattCallback:Lcom/clj/fastble/callback/BleGattCallback; = null

.field static final prefixName1:Ljava/lang/String; = "nord"

.field static final prefixName2:Ljava/lang/String; = "nbee"

.field static final prefixName3:Ljava/lang/String; = "ems-ble"

.field static final prefixName4:Ljava/lang/String; = "xems"

.field static final prefixName5:Ljava/lang/String; = "NB-"

.field static final prefixName6:Ljava/lang/String; = "ems"

.field static progressDialog:Landroid/app/ProgressDialog; = null

.field private static scanCallback:Lcom/clj/fastble/callback/BleScanCallback; = null

.field static started:Z = false

.field static final uuid_read1:Ljava/lang/String; = "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

.field static final uuid_read2:Ljava/lang/String; = "0000fff1-0000-1000-8000-00805f9b34fb"

.field static final uuid_service1:Ljava/lang/String; = "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

.field static final uuid_service2:Ljava/lang/String; = "0000fff0-0000-1000-8000-00805f9b34fb"

.field static final uuid_write1:Ljava/lang/String; = "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

.field static final uuid_write2:Ljava/lang/String; = "0000fff2-0000-1000-8000-00805f9b34fb"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v2, "nord"

    const-string v3, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    const-string v4, "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

    const-string v5, "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v3, "nbee"

    const-string v4, "0000fff0-0000-1000-8000-00805f9b34fb"

    const-string v5, "0000fff1-0000-1000-8000-00805f9b34fb"

    const-string v6, "0000fff2-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v3, "ems-ble"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v3, "xems"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v3, "NB-"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v3, "ems"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->configs:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->bleDeviceList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceListenerList:Ljava/util/List;

    .line 66
    sput-boolean v2, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    .line 67
    sput v2, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    .line 132
    new-instance v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scanCallback:Lcom/clj/fastble/callback/BleScanCallback;

    .line 248
    new-instance v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$3;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$3;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->gattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectAll(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/data/BleDevice;

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->matchName(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->decreaseConnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceConnected(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/data/BleDevice;

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->removeDevice(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method private static addDevice(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "deviceId"    # Ljava/lang/Integer;

    .line 118
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->bleDeviceList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->onDeviceConnected(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    .line 120
    return-void
.end method

.method public static addDeviceListener(Lcom/isaigu/gymapp/train/ble/BleDeviceListener;)V
    .locals 1
    .param p0, "deviceListener"    # Lcom/isaigu/gymapp/train/ble/BleDeviceListener;

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public static cancelScan()V
    .locals 1

    .line 203
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 204
    return-void
.end method

.method public static connect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 207
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->gattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {v0, p0, v1}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 210
    return-void
.end method

.method public static connect(Ljava/lang/String;)V
    .locals 2
    .param p0, "mac"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/clj/fastble/BleManager;->connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 238
    return-void
.end method

.method private static connectAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/data/BleDevice;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 160
    .local v1, "bleDevice":Lcom/clj/fastble/data/BleDevice;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->matchName(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-static {v1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connect(Lcom/clj/fastble/data/BleDevice;)V

    .line 163
    .end local v1    # "bleDevice":Lcom/clj/fastble/data/BleDevice;
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method private static decreaseConnect()V
    .locals 1

    .line 241
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    .line 242
    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    .line 243
    :cond_0
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    if-eqz v0, :cond_1

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scan()V

    .line 246
    :cond_1
    return-void
.end method

.method private static deviceConnected(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "deviceId"    # Ljava/lang/Integer;

    .line 284
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 285
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->addDevice(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    .line 286
    return-void
.end method

.method public static disconnect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 290
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    :goto_0
    return-void
.end method

.method private static getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .locals 6
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 185
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 190
    return-object v1

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v2, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->configs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    .line 194
    .local v3, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getPrefixName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "prefixName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    return-object v3

    .line 198
    .end local v3    # "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .end local v4    # "prefixName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 199
    :cond_3
    return-object v1
.end method

.method public static indicate(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleIndicateCallback;)V
    .locals 4
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 311
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    move-result-object v0

    .line 312
    .local v0, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getServiceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getReadUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/clj/fastble/BleManager;->indicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleIndicateCallback;)V

    .line 313
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .line 70
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->init(Landroid/app/Application;)V

    .line 71
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->enableLog(Z)Lcom/clj/fastble/BleManager;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/clj/fastble/BleManager;->setReConnectCount(IJ)Lcom/clj/fastble/BleManager;

    move-result-object v0

    .line 74
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->setSplitWriteNum(I)Lcom/clj/fastble/BleManager;

    move-result-object v0

    .line 75
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->setConnectOverTime(J)Lcom/clj/fastble/BleManager;

    move-result-object v0

    .line 76
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->setOperateTimeout(I)Lcom/clj/fastble/BleManager;

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->initScan()V

    .line 78
    return-void
.end method

.method private static initScan()V
    .locals 3

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    .line 83
    .local v0, "serviceUuids":[Ljava/util/UUID;
    new-instance v1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    .line 89
    invoke-virtual {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object v1

    .line 90
    .local v1, "scanRuleConfig":Lcom/clj/fastble/scan/BleScanRuleConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    .line 91
    return-void
.end method

.method private static matchName(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 6
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 167
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 172
    return v1

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v2, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->configs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    .line 176
    .local v3, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getPrefixName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "prefixName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    const/4 v1, 0x1

    return v1

    .line 180
    .end local v3    # "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .end local v4    # "prefixName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 181
    :cond_3
    return v1
.end method

.method public static notify(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 4
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 297
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    move-result-object v0

    .line 298
    .local v0, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getServiceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getReadUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V

    .line 299
    return-void
.end method

.method private static onDeviceConnected(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "deviceId"    # Ljava/lang/Integer;

    .line 321
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/ble/BleDeviceListener;

    .line 322
    .local v1, "listener":Lcom/isaigu/gymapp/train/ble/BleDeviceListener;
    invoke-interface {v1, p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceListener;->onDeviceConnected(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V

    .line 323
    .end local v1    # "listener":Lcom/isaigu/gymapp/train/ble/BleDeviceListener;
    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method private static onDeviceDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/ble/BleDeviceListener;

    .line 328
    .local v1, "listener":Lcom/isaigu/gymapp/train/ble/BleDeviceListener;
    invoke-interface {v1, p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceListener;->onDeviceDisconnected(Lcom/clj/fastble/data/BleDevice;)V

    .line 329
    .end local v1    # "listener":Lcom/isaigu/gymapp/train/ble/BleDeviceListener;
    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method public static read(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleReadCallback;)V
    .locals 4
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleReadCallback;

    .line 306
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    move-result-object v0

    .line 307
    .local v0, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getServiceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getReadUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/clj/fastble/BleManager;->read(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    .line 308
    return-void
.end method

.method private static removeDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->bleDeviceList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->onDeviceDisconnected(Lcom/clj/fastble/data/BleDevice;)V

    .line 125
    return-void
.end method

.method public static removeDeviceListener(Lcom/isaigu/gymapp/train/ble/BleDeviceListener;)V
    .locals 1
    .param p0, "deviceListener"    # Lcom/isaigu/gymapp/train/ble/BleDeviceListener;

    .line 114
    sget-object v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->deviceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public static removeNotify(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 301
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    move-result-object v0

    .line 302
    .local v0, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getReadUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/clj/fastble/BleManager;->removeNotifyCallback(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static scan()V
    .locals 2

    .line 128
    const-string v0, "www"

    const-string v1, "\u5f00\u59cb\u626b\u63cf"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scanCallback:Lcom/clj/fastble/callback/BleScanCallback;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V

    .line 130
    return-void
.end method

.method public static start()V
    .locals 1

    .line 94
    sget-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scan()V

    .line 99
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->cancelScan()V

    .line 107
    return-void
.end method

.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 7
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "data"    # [B
    .param p2, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    move-result-object v0

    .line 317
    .local v0, "config":Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getServiceUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->getWriteUuid()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcom/clj/fastble/callback/BleWriteCallback;)V

    .line 318
    return-void
.end method
