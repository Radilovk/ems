.class public Lcom/isaigu/gymapp/train/model/CommandReceiver;
.super Ljava/lang/Object;
.source "CommandReceiver.java"


# instance fields
.field private batteryRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

.field private device:Lcom/clj/fastble/data/BleDevice;

.field private handler:Landroid/os/Handler;

.field notifyCallback:Lcom/clj/fastble/callback/BleNotifyCallback;

.field private sender:Lcom/isaigu/gymapp/train/model/CommandSender;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)V
    .locals 4
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "sender"    # Lcom/isaigu/gymapp/train/model/CommandSender;
    .param p3, "commandListener"    # Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->closed:Z

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;-><init>(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/train/model/CommandReceiver$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/model/CommandReceiver$2;-><init>(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->notifyCallback:Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->device:Lcom/clj/fastble/data/BleDevice;

    .line 25
    iput-object p2, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 26
    iput-object p3, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandReceiver$5RcVmvYFb-ZX5yry7Mbjplng4N8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandReceiver$5RcVmvYFb-ZX5yry7Mbjplng4N8;-><init>(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->closed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Lcom/isaigu/gymapp/train/model/CommandSender;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 16
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 16
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 16
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/train/model/CommandReceiver;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;
    .param p1, "x1"    # [B

    .line 16
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->onReceiveData([B)V

    return-void
.end method

.method public static synthetic lambda$5RcVmvYFb-ZX5yry7Mbjplng4N8(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->receiveCommend()V

    return-void
.end method

.method private onBatteryCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
    .locals 3
    .param p1, "commend"    # Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    .line 87
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->getPdu()[B

    move-result-object v0

    .line 88
    .local v0, "pdu":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 89
    .local v1, "batteryValue":I
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V

    .line 92
    :cond_0
    return-void
.end method

.method private onReceiveData([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 73
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/HexUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "hexStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u547d\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    new-instance v1, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;-><init>()V

    .line 77
    .local v1, "commend":Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readCommendFromByte([B)Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    .line 78
    const/4 v2, 0x6

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->getCommend()B

    move-result v3

    if-ne v2, v3, :cond_0

    .line 79
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->onBatteryCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "commend":Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    :cond_0
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6536\u5230\u547d\u4ee4\u62a5\u9519\uff1a"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private receiveCommend()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->device:Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->notifyCallback:Lcom/clj/fastble/callback/BleNotifyCallback;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->notify(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleNotifyCallback;)V

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->closed:Z

    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->closed:Z

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->removeNotify(Lcom/clj/fastble/data/BleDevice;)V

    .line 38
    return-void
.end method
